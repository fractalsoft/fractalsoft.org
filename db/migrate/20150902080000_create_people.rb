class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people, id: :uuid do |t|
      t.string :nickname, null: false
      t.string :fullname, null: false
      t.string :position
      t.string :image
      t.string :github
      t.string :blog
      t.string :twitter
      t.string :facebook
      t.string :website
      t.string :email
      t.string :skills, default: ''
      t.string :technologies, default: ''
      t.text :introduction
      t.text :description
      t.string :slug, index: true
    end
  end
end
