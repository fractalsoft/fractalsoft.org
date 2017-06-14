class AddVimeoToPeople < ActiveRecord::Migration
  def change
    add_column :people, :vimeo, :string
  end
end
