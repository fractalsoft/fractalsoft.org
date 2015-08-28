class AddSkillsAndTechnologiesToPeople < ActiveRecord::Migration
  def change
    add_column :people, :skills, :string
    add_column :people, :technologies, :string
  end
end
