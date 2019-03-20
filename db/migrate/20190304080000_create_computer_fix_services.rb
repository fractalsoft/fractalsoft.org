class CreateComputerFixServices < ActiveRecord::Migration[5.2]
  def change
    create_table :computer_fix_services, id: :uuid do |t|
      t.decimal :price, precision: 16, scale: 4
      t.integer :position, default: 0, null: false
      t.string :currency

      t.timestamps null: false
    end

    reversible do |dir|
      dir.up do
        ComputerFixService.create_translation_table!(
          name: :string
        )
      end

      dir.down do
        ComputerFixService.drop_translation_table!
      end
    end
  end
end
