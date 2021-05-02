class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects, id: :uuid do |t|
      t.boolean :display, default: true, null: false
      t.boolean :dofollow, default: false, null: false
      t.integer :position, default: 0, null: false
      t.integer :year
      t.string :slug, index: true
      t.string :thumbnail
      t.string :title, null: false
      t.string :url

      t.timestamps null: false
    end

    reversible do |dir|
      dir.up do
        Project.create_translation_table!(
          description: :text,
          introduction: :text,
          subtitle: :string
        )
      end

      dir.down do
        Project.drop_translation_table!
      end
    end
  end
end
