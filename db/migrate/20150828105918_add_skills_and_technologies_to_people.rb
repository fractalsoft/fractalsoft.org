class AddSkillsAndTechnologiesToPeople < ActiveRecord::Migration
  def change
    add_column :people, :skills, :string, default: ''
    add_column :people, :technologies, :string, default: ''
  end
end
