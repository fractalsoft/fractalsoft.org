# frozen_string_literal: true

require Rails.root.join('lib/content_import/innovation_hub_article_importer')
require Rails.root.join('lib/content_import/innovation_hub_asset_importer')
require Rails.root.join('lib/content_import/innovation_hub_repository_importer')

ContentImport::InnovationHubArticleImporter.import!(dry_run: false)
ContentImport::InnovationHubAssetImporter.import!(dry_run: false)
ContentImport::InnovationHubRepositoryImporter.import!(dry_run: false)
