# frozen_string_literal: true

require Rails.root.join('lib/content_import/project_importer')
ContentImport::ProjectImporter.import!(dry_run: false)
