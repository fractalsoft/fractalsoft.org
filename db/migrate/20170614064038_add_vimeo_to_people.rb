class AddVimeoToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :vimeo, :string
  end
end
