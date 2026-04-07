# frozen_string_literal: true

require 'yaml'

module ContentImport
  class InnovationHubAssetImporter
    ASSET_DIR = Rails.root.join('content/innovation_hub_assets').freeze
    REQUIRED_KEYS = %w[slug kind url action_type translations].freeze
    KIND_VALUES = %w[cheatsheet diagram template runbook].freeze

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
        import_asset!(payload)
      end
      imported_slugs
    end

    private

    def each_file
      paths = if @file_paths.present?
                Array(@file_paths).map { |path| Pathname(path) }
              else
                Dir[ASSET_DIR.join('*.yml')].sort.map { |path| Pathname(path) }
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
      unless KIND_VALUES.include?(payload['kind'])
        raise ArgumentError, "kind must be one of #{KIND_VALUES.join(', ')} in #{path}"
      end
    end

    def import_asset!(payload)
      asset = InnovationHubAsset.find_or_initialize_by(slug: payload.fetch('slug'))
      asset.assign_attributes(
        title: translated_title(payload),
        display: payload.fetch('display', true),
        kind: payload.fetch('kind'),
        position: payload.fetch('position', 0),
        url: payload.fetch('url'),
        action_type: payload.fetch('action_type'),
        preview_image_url: payload['preview_image_url']
      )

      with_original_locale do
        payload.fetch('translations').each do |locale, translation|
          next unless translation.is_a?(Hash)

          I18n.locale = locale.to_sym
          asset.description = translation['description']
          asset.usage_context = translation['usage_context']
        end
      end

      raise ArgumentError, "Invalid innovation hub asset '#{asset.slug}': #{asset.errors.full_messages.join(', ')}" unless asset.valid?
      asset.save! unless @dry_run
      imported_slugs << asset.slug
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
