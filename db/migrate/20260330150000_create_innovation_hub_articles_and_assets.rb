# frozen_string_literal: true

class CreateInnovationHubArticlesAndAssets < ActiveRecord::Migration[8.0]
  def change
    create_table :innovation_hub_articles, id: :uuid, default: -> { 'gen_random_uuid()' } do |t|
      t.boolean :display, null: false, default: true
      t.boolean :featured, null: false, default: false
      t.string :kind, null: false
      t.integer :position, null: false, default: 0
      t.string :slug, null: false
      t.string :title, null: false
      t.string :author_name, null: false
      t.string :read_time, null: false
      t.datetime :published_at, null: false
      t.string :cover_image_url
      t.string :external_url

      t.timestamps precision: nil, null: false
    end

    add_index :innovation_hub_articles, :slug, unique: true
    add_index :innovation_hub_articles, :display
    add_index :innovation_hub_articles, :featured
    add_index :innovation_hub_articles, :kind

    create_table :innovation_hub_article_translations do |t|
      t.uuid :innovation_hub_article_id, null: false
      t.string :locale, null: false
      t.text :summary
      t.text :body

      t.timestamps null: false
    end

    add_index :innovation_hub_article_translations, :innovation_hub_article_id, name: 'index_ih_article_translations_on_article_id'
    add_index :innovation_hub_article_translations, :locale

    create_table :innovation_hub_assets, id: :uuid, default: -> { 'gen_random_uuid()' } do |t|
      t.boolean :display, null: false, default: true
      t.string :kind, null: false
      t.integer :position, null: false, default: 0
      t.string :slug, null: false
      t.string :title, null: false
      t.string :url, null: false
      t.string :action_type, null: false, default: 'read'

      t.timestamps precision: nil, null: false
    end

    add_index :innovation_hub_assets, :slug, unique: true
    add_index :innovation_hub_assets, :display
    add_index :innovation_hub_assets, :kind

    create_table :innovation_hub_asset_translations do |t|
      t.uuid :innovation_hub_asset_id, null: false
      t.string :locale, null: false
      t.text :description
      t.text :usage_context

      t.timestamps null: false
    end

    add_index :innovation_hub_asset_translations, :innovation_hub_asset_id, name: 'index_ih_asset_translations_on_asset_id'
    add_index :innovation_hub_asset_translations, :locale
  end
end
