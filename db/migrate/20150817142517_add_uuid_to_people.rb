class AddUuidToPeople < ActiveRecord::Migration
  def change
    add_column :people, :uuid, :uuid, default: 'uuid_generate_v4()'
  end
end
