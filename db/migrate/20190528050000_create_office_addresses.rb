class CreateOfficeAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :office_addresses, id: :uuid do |t|
      t.decimal :latitude, precision: 16, scale: 10
      t.decimal :longitude, precision: 16, scale: 10
      t.integer :position, default: 0, null: false
      t.string :city
      t.string :iso_3166_code
      t.string :map_link
      t.string :postcode
      t.string :slug, index: true
      t.string :street_with_number

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        OfficeAddress.create_translation_table!(
          country: :string,
          name: :string
        )
      end

      dir.down do
        OfficeAddress.drop_translation_table!
      end
    end
  end
end
