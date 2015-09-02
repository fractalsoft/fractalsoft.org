class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects, id: :uuid do |t|
      t.string :title, null: false
      t.string :subtitle
      t.string :url
      t.integer :year
      t.text :description
      t.string :thumbnail
      t.timestamps
    end
  end
end
