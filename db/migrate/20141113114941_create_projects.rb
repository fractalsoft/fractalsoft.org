class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :url
      t.string :thumbnail
      t.integer :year

      t.timestamps
    end
  end
end
