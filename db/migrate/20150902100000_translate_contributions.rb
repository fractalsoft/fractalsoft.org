class TranslateContributions < ActiveRecord::Migration[5.1]
  def up
    Contribution.create_translation_table! name: :string
  end

  def down
    Contribution.drop_translation_table! migrate_data: true
  end
end
