# frozen_string_literal: true

# Contributions
Contribution.delete_all

require Rails.root.join('lib/content_import/contribution_importer')
ContentImport::ContributionImporter.import!(dry_run: false)
