class AddBlogToPeople < ActiveRecord::Migration
  def change
    add_column :people, :blog, :string
  end
end
