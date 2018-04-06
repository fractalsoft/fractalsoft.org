class AddDisplayToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :display, :boolean, default: true
  end
end
