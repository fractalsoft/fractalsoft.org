class AddDoFollowToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :dofollow, :boolean, default: false
  end
end
