class AddVimeoToPeople < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :vimeo, :string
  end
end
