class AddUuidToPeople < ActiveRecord::Migration
  def change
    add_column :people, :uuid, :uuid,
               default: 'uuid_generate_v4()', null: false

    change_table :people do |t|
      t.remove :id
      t.rename :uuid, :id
    end

    execute 'ALTER TABLE people ADD PRIMARY KEY (id);'
  end
end
