class CreateTechnologicalSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :technological_skills, id: :uuid do |t|
      t.integer :position, default: 0
      t.integer :rating, default: 0, null: false
      t.uuid :person_id, index: true
      t.uuid :technology_id, index: true

      t.timestamps
    end
  end
end
