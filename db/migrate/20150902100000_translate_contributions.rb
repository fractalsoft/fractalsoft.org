class TranslateContributions < ActiveRecord::Migration
  def up
    Contribution.create_translation_table! name: :string
  end

  def down
    Contribution.drop_translation_table! migrate_data: true
  end
end
