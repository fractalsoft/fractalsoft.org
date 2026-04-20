# frozen_string_literal: true

class AddTitleToInnovationHubTranslationTables < ActiveRecord::Migration[8.0]
  def up
    add_column :innovation_hub_article_translations, :title, :string
    add_column :innovation_hub_asset_translations, :title, :string

    backfill_translation_titles!
  end

  def down
    remove_column :innovation_hub_article_translations, :title
    remove_column :innovation_hub_asset_translations, :title
  end

  private

  def backfill_translation_titles!
    execute <<~SQL.squish
      UPDATE innovation_hub_article_translations AS translations
      SET title = articles.title
      FROM innovation_hub_articles AS articles
      WHERE translations.innovation_hub_article_id = articles.id
        AND (translations.title IS NULL OR translations.title = '')
    SQL

    execute <<~SQL.squish
      UPDATE innovation_hub_asset_translations AS translations
      SET title = assets.title
      FROM innovation_hub_assets AS assets
      WHERE translations.innovation_hub_asset_id = assets.id
        AND (translations.title IS NULL OR translations.title = '')
    SQL
  end
end
