class TranslatePeople < ActiveRecord::Migration
  def up
    Person.create_translation_table!(saying: :string, introduction: :text)
  end

  def down
    Person.drop_translation_table! migrate_data: true
  end
end
