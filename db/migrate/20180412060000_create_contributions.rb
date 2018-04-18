class CreateContributions < ActiveRecord::Migration[5.1]
  def change
    create_table :contributions, id: :uuid do |t|
      t.integer :position, default: 0
      t.uuid :person_id, index: true, foreign_key: true
      t.uuid :project_id, index: true, foreign_key: true

      t.timestamps null: false
    end

    reversible do |dir|
      dir.up do
        Contribution.create_translation_table!(
          name: :string
        )
      end

      dir.down do
        Contribution.drop_translation_table!
      end
    end
  end
end
