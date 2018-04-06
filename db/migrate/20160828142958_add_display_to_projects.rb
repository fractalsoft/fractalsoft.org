class AddDisplayToProjects < ActiveRecord::Migration[4.2]
  def change
    add_column :projects, :display, :boolean, default: true
  end
end
