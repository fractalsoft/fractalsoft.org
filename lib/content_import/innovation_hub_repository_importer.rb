# frozen_string_literal: true

require 'yaml'

module ContentImport
  class InnovationHubRepositoryImporter
    REPO_DIR = Rails.root.join('content/innovation_hub_repositories').freeze
    REQUIRED_KEYS = %w[slug url translations].freeze

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
        import_repository!(payload)
      end
      imported_slugs
    end

    private

    def each_file
      paths = if @file_paths.present?
                Array(@file_paths).map { |path| Pathname(path) }
              else
                Dir[REPO_DIR.join('*.yml')].sort.map { |path| Pathname(path) }
              end
      paths.each { |path| yield path }
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
    end

    def import_repository!(payload)
      repo = InnovationHubRepository.find_or_initialize_by(slug: payload.fetch('slug'))
      repo.assign_attributes(
        title: translated_title(payload),
        display: payload.fetch('display', true),
        position: payload.fetch('position', 0),
        url: payload.fetch('url')
      )

      with_original_locale do
        payload.fetch('translations').each do |locale, translation|
          next unless translation.is_a?(Hash)

          I18n.locale = locale.to_sym
          repo.description = translation['description']
          repo.usage_context = translation['usage_context']
        end
      end

      raise ArgumentError, "Invalid innovation hub repository '#{repo.slug}': #{repo.errors.full_messages.join(', ')}" unless repo.valid?
      repo.save! unless @dry_run
      imported_slugs << repo.slug
    end

    def translated_title(payload)
      translations = payload.fetch('translations')
      preferred = translations[I18n.default_locale.to_s] || translations.values.first || {}
      preferred['title'] || payload.fetch('slug')
    end

    def with_original_locale
      original_locale = I18n.locale
      yield
    ensure
      I18n.locale = original_locale
    end
  end
end
