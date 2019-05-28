class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities, id: :uuid do |t|
      t.boolean :published, default: false
      t.integer :position, default: 0, null: false
      t.string :logo
      t.string :logotype
      t.string :name
      t.string :slug

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Community.create_translation_table!(
          description: :text,
          introduction: :text,
          meta_description: :string,
          title: :string
        )
      end

      dir.down do
        Community.drop_translation_table!
      end
    end
  end
end
