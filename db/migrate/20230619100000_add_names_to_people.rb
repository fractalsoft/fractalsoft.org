class AddNamesToPeople < ActiveRecord::Migration[7.0]
  def change
    change_table :people do |table|
      table.string :first_name
      table.string :last_name
      table.virtual :full_name, type: :string, as: "first_name || ' ' || last_name", stored: true
    end

    remove_column :people, :fullname
  end
end
