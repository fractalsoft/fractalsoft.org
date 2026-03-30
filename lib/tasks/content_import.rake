# frozen_string_literal: true

require_relative '../content_import/project_importer'
require_relative '../content_import/contribution_importer'

namespace :content do
  desc 'Import projects from content/projects YAML files'
  task import_projects: :environment do
    slugs = ContentImport::ProjectImporter.import!(dry_run: false)
    puts "Imported projects: #{slugs.size}"
  end

  desc 'Import contributions from content/contributions YAML files'
  task import_contributions: :environment do
    ContentImport::ContributionImporter.import!(dry_run: false)
    puts 'Imported contributions'
  end

  desc 'Import projects and contributions from content files'
  task import_all: :environment do
    Rake::Task['content:import_projects'].invoke
    Rake::Task['content:import_contributions'].invoke
  end

  desc 'Validate content files and project/contribution references'
  task validate: :environment do
    slugs = ContentImport::ProjectImporter.import!(dry_run: true)
    ContentImport::ContributionImporter.import!(dry_run: true)
    puts "Content validation passed (#{slugs.size} project files)."
  end
end
