class AddDoFollowToProjects < ActiveRecord::Migration[4.2]
  def change
    add_column :projects, :dofollow, :boolean, default: false
  end
end
