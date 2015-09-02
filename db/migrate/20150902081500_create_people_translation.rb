class CreatePeopleTranslation < ActiveRecord::Migration
  def change
    create_table :people_translations do |t|
      Person.create_translation_table! introduction: :text
    end
  end
end
