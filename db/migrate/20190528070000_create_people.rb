class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people, id: :uuid do |t|
      t.boolean :published, default: false
      t.integer :position, default: 0, null: false
      t.string :blog
      t.string :email
      t.string :facebook
      t.string :fullname, null: false
      t.string :github
      t.string :image
      t.string :instagram
      t.string :linkedin
      t.string :nickname
      t.string :skills, default: '', null: false
      t.string :slug, index: true
      t.string :technologies, default: '', null: false
      t.string :twitter
      t.string :vimeo
      t.string :website
      t.text :description

      t.timestamps null: false
    end

    reversible do |dir|
      dir.up do
        Person.create_translation_table!(
          introduction: :text,
          saying: :string
        )
      end

      dir.down do
        Person.drop_translation_table!
      end
    end
  end
end
