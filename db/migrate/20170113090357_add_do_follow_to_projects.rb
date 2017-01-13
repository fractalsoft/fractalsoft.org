class AddDoFollowToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :dofollow, :boolean, default: false
  end
end
