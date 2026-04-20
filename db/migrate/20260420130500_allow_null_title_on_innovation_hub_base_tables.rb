# frozen_string_literal: true

class AllowNullTitleOnInnovationHubBaseTables < ActiveRecord::Migration[8.0]
  def change
    change_column_null :innovation_hub_articles, :title, true
    change_column_null :innovation_hub_assets, :title, true
  end
end
