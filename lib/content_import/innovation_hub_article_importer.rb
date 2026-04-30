# frozen_string_literal: true

# rubocop:disable Metrics/AbcSize, Metrics/ClassLength, Metrics/MethodLength

require 'yaml'

module ContentImport
  class InnovationHubArticleImporter
    ARTICLE_DIR = Rails.root.join('content/innovation_hub_articles').freeze
    REQUIRED_KEYS = %w[slug kind author_id read_time published_at translations].freeze

    def self.import!(dry_run: false, file_paths: nil)
      new(dry_run: dry_run, file_paths: file_paths).import!
    end

    def initialize(dry_run:, file_paths: nil)
      @dry_run = dry_run
      @file_paths = file_paths
      @imported_slugs = []
    end

    attr_reader :imported_slugs

    def import!
      each_file do |path|
        payload = parse_yaml(path)
        validate_payload!(payload, path)
        import_article!(payload)
      end
      imported_slugs
    end

    private

    def each_file(&)
      paths = if @file_paths.present?
                Array(@file_paths).map { |path| Pathname(path) }
              else
                Dir[ARTICLE_DIR.join('*.yml')].map { |path| Pathname(path) }
              end
      paths.each(&)
      paths
    end

    def parse_yaml(path)
      YAML.safe_load(path.read, permitted_classes: [], aliases: false) || {}
    rescue Psych::SyntaxError => e
      raise ArgumentError, "Invalid YAML in #{path}: #{e.message}"
    end

    def validate_payload!(payload, path)
      missing = REQUIRED_KEYS.select { |key| payload[key].blank? }
      raise ArgumentError, "Missing keys #{missing.join(', ')} in #{path}" if missing.any?
      raise ArgumentError, "translations must be a locale hash in #{path}" unless payload['translations'].is_a?(Hash)
      raise ArgumentError, "Unknown author_id '#{payload['author_id']}' in #{path}" if resolve_author(payload['author_id']).nil?

      validate_translation_titles!(payload.fetch('translations'), path)
    end

    def import_article!(payload)
      author = resolve_author(payload.fetch('author_id'))
      article = InnovationHubArticle.find_or_initialize_by(slug: payload.fetch('slug'))
      apply_base_attributes(article, payload, author)
      apply_translations(article, payload.fetch('translations'))
      validate_article!(article)
      persist_article!(article)
    end

    def apply_base_attributes(article, payload, author)
      article.assign_attributes(
        title: translated_title(payload),
        display: payload.fetch('display') { true },
        featured: payload.fetch('featured') { false },
        kind: payload.fetch('kind'),
        position: payload.fetch('position') { 0 },
        author_id: author.id,
        author_name: payload['author_name'].presence || author.full_name,
        read_time: payload.fetch('read_time'),
        published_at: Time.zone.parse(payload.fetch('published_at').to_s),
        cover_image_url: payload['cover_image_url'],
        external_url: payload['external_url']
      )
    end

    def apply_translations(article, translations)
      with_original_locale do
        translations.each do |locale, translation|
          next unless translation.is_a?(Hash)

          I18n.locale = locale.to_sym
          assign_translation(article, translation)
        end
      end
    end

    def assign_translation(article, translation)
      article.title = translation['title']
      article.summary = translation['summary']
      article.body = translation['body']
    end

    def validate_article!(article)
      return if article.valid?

      raise ArgumentError,
            "Invalid innovation hub article '#{article.slug}': #{article.errors.full_messages.join(', ')}"
    end

    def persist_article!(article)
      article.save! unless @dry_run
      imported_slugs << article.slug
    end

    def resolve_author(author_id)
      id = author_id.to_s
      Person.find_by(id: id) || Person.find_by(nickname: id)
    end

    def translated_title(payload)
      translations = payload.fetch('translations')
      preferred = translations[I18n.default_locale.to_s] || translations.values.first || {}
      preferred['title'] || payload.fetch('slug')
    end

    def validate_translation_titles!(translations, path)
      invalid_locales = translations.filter_map do |locale, translation|
        locale unless translation.is_a?(Hash) && translation['title'].to_s.present?
      end
      return if invalid_locales.empty?

      raise ArgumentError, "Missing translation title for locales #{invalid_locales.join(', ')} in #{path}"
    end

    def with_original_locale
      original_locale = I18n.locale
      yield
    ensure
      I18n.locale = original_locale
    end
  end
end
# rubocop:enable Metrics/AbcSize, Metrics/ClassLength, Metrics/MethodLength
