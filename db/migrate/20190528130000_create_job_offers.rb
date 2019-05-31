class CreateJobOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_offers, id: :uuid do |t|
      t.boolean :published, default: false
      t.integer :position, default: 0
      t.string :slug

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        JobOffer.create_translation_table!(
          brief: { type: :text, default: '' },
          description: { type: :text, default: '' },
          headline: :string,
          introduction: { type: :text, default: '' },
          meta_description: { type: :string, default: '' },
          meta_title: { type: :string, default: '' },
          name: :string,
          title: :string
        )
      end

      dir.down do
        JobOffer.drop_translation_table!
      end
    end
  end
end
