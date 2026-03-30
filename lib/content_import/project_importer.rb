# frozen_string_literal: true

require 'yaml'

module ContentImport
  class ProjectImporter
    PROJECT_DIR = Rails.root.join('content/projects').freeze
    REQUIRED_KEYS = %w[slug translations].freeze

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
        import_project!(payload)
      end
      imported_slugs
    end

    def self.known_slugs(file_paths: nil)
      paths = if file_paths.present?
                Array(file_paths).map { |path| Pathname(path) }
              else
                Dir[PROJECT_DIR.join('*.yml')].sort.map { |path| Pathname(path) }
              end

      importer = new(dry_run: true, file_paths: paths)
      paths.map do |path|
        payload = importer.send(:parse_yaml, path)
        payload.fetch('slug')
      end
    end

    protected

    def each_file
      paths = if @file_paths.present?
                Array(@file_paths).map { |path| Pathname(path) }
              else
                Dir[PROJECT_DIR.join('*.yml')].sort.map { |path| Pathname(path) }
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

      translations = payload.fetch('translations')
      unless translations.is_a?(Hash)
        raise ArgumentError, "translations must be a locale hash in #{path}"
      end
    end

    def import_project!(payload)
      project = Project.find_or_initialize_by(slug: payload.fetch('slug'))
      project.assign_attributes(
        title: translated_title(payload),
        display: payload.fetch('display', true),
        dofollow: payload.fetch('dofollow', false),
        position: payload.fetch('position', 0),
        year: payload['year'],
        url: payload['url'],
        industry: payload['industry'],
        engagement_type: payload['engagement_type'],
        featured: payload.fetch('featured', false),
        outcome_measurable: payload['outcome_measurable'],
      )

      with_original_locale do
        payload.fetch('translations').each do |locale, translation|
          next unless translation.is_a?(Hash)

          I18n.locale = locale.to_sym
          project.title = translation['title'] if translation['title'].present?
          project.subtitle = translation['subtitle']
          project.introduction = translation['introduction']
          project.description = translation['description']
          project.challenge_summary = translation['challenge_summary']
          project.solution_summary = translation['solution_summary']
          project.outcome_summary = translation['outcome_summary']
        end
      end

      unless @dry_run
        project.save!
      end
      imported_slugs << project.slug
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
