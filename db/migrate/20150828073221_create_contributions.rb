class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.references :project, index: true, foreign_key: true
      t.uuid :person_id, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
