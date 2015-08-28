class CreateProjectTranslation < ActiveRecord::Migration
  def up
    Project.create_translation_table! description: :text, subtitle: :string
  end

  def down
    Project.drop_translation_table! migrate_data: true
  end
end
