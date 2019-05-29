class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies, id: :uuid do |t|
      t.integer :category, default: 0, null: false
      t.string :slug, index: true
      t.text :icon
      t.text :icon_wordmark

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Technology.create_translation_table!(
          description: { type: :text, default: '' },
          meta_description: { type: :string, default: '' },
          meta_title: { type: :string, default: '' },
          name: :string,
          title: :string
        )
      end

      dir.down do
        Technology.drop_translation_table!
      end
    end
  end
end
