class CreateProjects < ActiveRecord::Migration[4.2]
  def change
    create_table :projects, id: :uuid do |t|
      t.string :title, null: false
      t.string :subtitle
      t.string :url
      t.text :introduction
      t.text :description
      t.string :thumbnail
      t.integer :year
      t.timestamps
    end
  end
end
