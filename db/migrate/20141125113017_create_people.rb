class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fullname
      t.text :description
      t.string :position
      t.string :image
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :github
      t.string :email

      t.timestamps
    end
  end
end
