class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.text :descritpion
      t.string :url
      t.string :thumbnail

      t.timestamps
    end
  end
end
