class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images, id: :uuid do |t|
      t.string :image
      t.string :kind
      t.uuid :project_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
