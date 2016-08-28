class AddDisplayToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :display, :boolean, default: true
  end
end
