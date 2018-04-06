class CreateContributions < ActiveRecord::Migration[4.2]
  def change
    create_table :contributions, id: :uuid do |t|
      t.uuid :person_id, index: true, foreign_key: true
      t.uuid :project_id, index: true, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
