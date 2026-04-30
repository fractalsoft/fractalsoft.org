class AddAuthorIdToInnovationHubArticles < ActiveRecord::Migration[8.0]
  def change
    add_reference :innovation_hub_articles, :author, type: :uuid, foreign_key: { to_table: :people }, index: true
  end
end
