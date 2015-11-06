class CreateCieszynJobs < ActiveRecord::Migration
  def change
    create_table :cieszyn_jobs do |t|
      t.string :name
      t.integer :price

      t.timestamps null: false
    end
  end
end
