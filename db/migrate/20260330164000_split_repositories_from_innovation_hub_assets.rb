# frozen_string_literal: true

class SplitRepositoriesFromInnovationHubAssets < ActiveRecord::Migration[8.0]
  class MigrationAsset < ApplicationRecord
    self.table_name = 'innovation_hub_assets'
  end

  class MigrationAssetTranslation < ApplicationRecord
    self.table_name = 'innovation_hub_asset_translations'
  end

  class MigrationRepository < ApplicationRecord
    self.table_name = 'innovation_hub_repositories'
  end

  class MigrationRepositoryTranslation < ApplicationRecord
    self.table_name = 'innovation_hub_repository_translations'
  end

  def up
    add_column :innovation_hub_assets, :preview_image_url, :string

    create_table :innovation_hub_repositories, id: :uuid, default: -> { 'gen_random_uuid()' } do |t|
      t.boolean :display, null: false, default: true
      t.integer :position, null: false, default: 0
      t.string :slug, null: false
      t.string :title, null: false
      t.string :url, null: false

      t.timestamps precision: nil, null: false
    end

    add_index :innovation_hub_repositories, :slug, unique: true
    add_index :innovation_hub_repositories, :display

    create_table :innovation_hub_repository_translations do |t|
      t.uuid :innovation_hub_repository_id, null: false
      t.string :locale, null: false
      t.text :description
      t.text :usage_context

      t.timestamps null: false
    end

    add_index :innovation_hub_repository_translations, :innovation_hub_repository_id, name: 'index_ih_repository_translations_on_repository_id'
    add_index :innovation_hub_repository_translations, :locale

    migrate_repository_assets!
  end

  def down
    remove_column :innovation_hub_assets, :preview_image_url
    drop_table :innovation_hub_repository_translations
    drop_table :innovation_hub_repositories
  end

  private

  def migrate_repository_assets!
    MigrationAsset.where(kind: 'repository').find_each do |asset|
      repo = MigrationRepository.create!(
        display: asset.display,
        position: asset.position,
        slug: asset.slug,
        title: asset.title,
        url: asset.url,
        created_at: asset.created_at,
        updated_at: asset.updated_at
      )

      MigrationAssetTranslation.where(innovation_hub_asset_id: asset.id).find_each do |translation|
        MigrationRepositoryTranslation.create!(
          innovation_hub_repository_id: repo.id,
          locale: translation.locale,
          description: translation.description,
          usage_context: translation.usage_context,
          created_at: translation.created_at,
          updated_at: translation.updated_at
        )
      end

      MigrationAssetTranslation.where(innovation_hub_asset_id: asset.id).delete_all
      asset.delete
    end
  end
end
