class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
