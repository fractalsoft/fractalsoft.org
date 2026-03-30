# frozen_string_literal: true

require 'yaml'
require_relative 'project_importer'

module ContentImport
  class ContributionImporter
    CONTRIBUTION_DIR = Rails.root.join('content/contributions').freeze

    def self.import!(dry_run: false, file_paths: nil)
      new(dry_run: dry_run, file_paths: file_paths).import!
    end

    def initialize(dry_run:, file_paths: nil)
      @dry_run = dry_run
      @file_paths = file_paths
      @project_slugs = ContentImport::ProjectImporter.known_slugs
    end

    def import!
      each_file do |path|
        payload = parse_yaml(path)
        validate_payload!(payload, path)
        import_payload!(payload, path)
      end
      true
    end

    protected

    def each_file
      paths = if @file_paths.present?
                Array(@file_paths).map { |path| Pathname(path) }
              else
                Dir[CONTRIBUTION_DIR.join('*.yml')].sort.map { |path| Pathname(path) }
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
      person_nickname = payload['person_nickname']
      raise ArgumentError, "Missing person_nickname in #{path}" if person_nickname.blank?
      raise ArgumentError, "Missing projects list in #{path}" unless payload['projects'].is_a?(Array)
    end

    def import_payload!(payload, path)
      person = Person.find_by(nickname: payload.fetch('person_nickname'))
      raise ArgumentError, "Unknown person '#{payload['person_nickname']}' in #{path}" if person.nil?

      payload.fetch('projects').each do |project_block|
        project_slug = project_block['slug']
        raise ArgumentError, "Missing project slug in #{path}" if project_slug.blank?
        unless @project_slugs.include?(project_slug)
          raise ArgumentError, "Project slug '#{project_slug}' not found in content/projects for #{path}"
        end

        project = Project.find_by(slug: project_slug)
        raise ArgumentError, "Project '#{project_slug}' not found in database. Run project import first." if project.nil?

        Array(project_block['contributions']).each do |entry|
          import_contribution!(person, project, entry, path)
        end
      end
    end

    def import_contribution!(person, project, entry, path)
      position = entry['position']
      raise ArgumentError, "Missing contribution position for #{project.slug} in #{path}" if position.blank?

      contribution = Contribution.find_or_initialize_by(
        person_id: person.id,
        project_id: project.id,
        position: position
      )
      contribution.assign_attributes(
        category: entry['category'],
        scope: entry['scope'],
        highlight: entry.fetch('highlight', false),
      )

      with_original_locale do
        translations = entry['translations'] || {}
        translations.each do |locale, translation|
          next unless translation.is_a?(Hash)

          I18n.locale = locale.to_sym
          contribution.name = translation['name']
          contribution.impact_statement = translation['impact_statement']
        end
      end

      contribution.save! unless @dry_run
    end

    def with_original_locale
      original_locale = I18n.locale
      yield
    ensure
      I18n.locale = original_locale
    end
  end
end
