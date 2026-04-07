# frozen_string_literal: true

require 'yaml'
require_relative '../content_import/project_importer'
require_relative '../content_import/contribution_importer'
require_relative '../content_import/innovation_hub_article_importer'
require_relative '../content_import/innovation_hub_asset_importer'
require_relative '../content_import/innovation_hub_repository_importer'

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
    Rake::Task['content:import_innovation_hub_articles'].invoke
    Rake::Task['content:import_innovation_hub_assets'].invoke
    Rake::Task['content:import_innovation_hub_repositories'].invoke
  end

  desc 'Import innovation hub articles from content files'
  task import_innovation_hub_articles: :environment do
    slugs = ContentImport::InnovationHubArticleImporter.import!(dry_run: false)
    puts "Imported innovation hub articles: #{slugs.size}"
  end

  desc 'Import innovation hub assets from content files'
  task import_innovation_hub_assets: :environment do
    slugs = ContentImport::InnovationHubAssetImporter.import!(dry_run: false)
    puts "Imported innovation hub assets: #{slugs.size}"
  end

  desc 'Import innovation hub repositories from content files'
  task import_innovation_hub_repositories: :environment do
    slugs = ContentImport::InnovationHubRepositoryImporter.import!(dry_run: false)
    puts "Imported innovation hub repositories: #{slugs.size}"
  end

  desc 'Validate content files and project/contribution references'
  task validate: :environment do
    slugs = ContentImport::ProjectImporter.import!(dry_run: true)
    ContentImport::ContributionImporter.import!(dry_run: true)
    article_slugs = ContentImport::InnovationHubArticleImporter.import!(dry_run: true)
    asset_slugs = ContentImport::InnovationHubAssetImporter.import!(dry_run: true)
    repository_slugs = ContentImport::InnovationHubRepositoryImporter.import!(dry_run: true)

    validate_innovation_hub_launch_gate!

    puts "Content validation passed (#{slugs.size} project files, #{article_slugs.size} innovation articles, #{asset_slugs.size} innovation assets, #{repository_slugs.size} repositories)."
  end
end

def validate_innovation_hub_launch_gate!
  article_payloads = Dir[Rails.root.join('content/innovation_hub_articles/*.yml')].map do |path|
    YAML.safe_load(Pathname(path).read, permitted_classes: [], aliases: false) || {}
  end
  visible_articles = article_payloads.select { |payload| payload.fetch('display', true) }
  research_count = visible_articles.count { |payload| payload['kind'] == 'research' }
  insight_count = visible_articles.count { |payload| payload['kind'] == 'insight' }
  featured_count = visible_articles.count { |payload| payload['featured'] == true }

  asset_payloads = Dir[Rails.root.join('content/innovation_hub_assets/*.yml')].map do |path|
    YAML.safe_load(Pathname(path).read, permitted_classes: [], aliases: false) || {}
  end
  visible_assets = asset_payloads.select { |payload| payload.fetch('display', true) }
  practical_assets = visible_assets.select { |payload| %w[cheatsheet diagram template runbook].include?(payload['kind']) }

  repository_payloads = Dir[Rails.root.join('content/innovation_hub_repositories/*.yml')].map do |path|
    YAML.safe_load(Pathname(path).read, permitted_classes: [], aliases: false) || {}
  end
  repository_assets = repository_payloads.select { |payload| payload.fetch('display', true) }

  errors = []
  errors << 'Need at least 2 visible research innovation hub articles.' if research_count < 2
  errors << 'Need at least 2 visible insight innovation hub articles.' if insight_count < 2
  errors << 'Need at least 1 visible featured innovation hub article.' if featured_count < 1
  errors << 'Need at least 2 visible practical assets (cheatsheet/diagram/template/runbook).' if practical_assets.count < 2
  errors << 'Need at least 1 visible cheatsheet asset.' if practical_assets.count { |payload| payload['kind'] == 'cheatsheet' } < 1
  errors << 'Need at least 1 visible diagram or template asset.' if practical_assets.count { |payload| %w[diagram template].include?(payload['kind']) } < 1
  errors << 'Need at least 3 visible repository assets with real links.' if repository_assets.count < 3

  if errors.any?
    raise ArgumentError, "Innovation Hub launch gate failed:\n- #{errors.join("\n- ")}"
  end
end
