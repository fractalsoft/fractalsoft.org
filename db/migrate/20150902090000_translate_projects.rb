class TranslateProjects < ActiveRecord::Migration
  def up
    Project.create_translation_table!(
      subtitle: :string, introduction: :text, description: :text
    )
  end

  def down
    Project.drop_translation_table! migrate_data: true
  end
end
