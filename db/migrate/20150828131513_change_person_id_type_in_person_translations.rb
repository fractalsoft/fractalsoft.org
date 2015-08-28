class ChangePersonIdTypeInPersonTranslations < ActiveRecord::Migration
  def up
    add_column :person_translations, :uuid, :uuid,
               default: 'uuid_generate_v4()', null: false

    change_table :person_translations do |t|
      t.remove :person_id
      t.rename :uuid, :person_id
    end

    execute 'ALTER TABLE person_translations ADD FOREIGN KEY (person_id) REFERENCES people(id);'
  end
end
