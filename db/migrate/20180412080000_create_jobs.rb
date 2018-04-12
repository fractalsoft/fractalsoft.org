class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs, id: :uuid do |t|
      t.decimal :price, precision: 16, scale: 4
      t.integer :position, default: 0
      t.string :currency

      t.timestamps null: false
    end

    reversible do |dir|
      dir.up do
        Job.create_translation_table!(
          name: :string
        )
      end

      dir.down do
        Job.drop_translation_table!
      end
    end
  end
end
