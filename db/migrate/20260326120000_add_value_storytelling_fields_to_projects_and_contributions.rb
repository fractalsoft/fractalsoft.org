class AddValueStorytellingFieldsToProjectsAndContributions < ActiveRecord::Migration[7.1]
  def change
    change_table :projects, bulk: true do |t|
      t.string :industry
      t.string :engagement_type
      t.boolean :featured, null: false, default: false
      t.boolean :outcome_measurable
    end

    add_column :project_translations, :challenge_summary, :text
    add_column :project_translations, :solution_summary, :text
    add_column :project_translations, :outcome_summary, :text

    change_table :contributions, bulk: true do |t|
      t.string :category
      t.string :scope
      t.boolean :highlight, null: false, default: false
    end

    add_column :contribution_translations, :impact_statement, :text

    add_index :projects, :featured
    add_index :contributions, :highlight
  end
end
