class AddIndexToTechnologicalSkills < ActiveRecord::Migration[7.0]
  def change
    add_index :technological_skills, [:person_id, :technology_id], unique: true
  end
end
