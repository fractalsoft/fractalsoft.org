class AddColumnEmojiToTechnologies < ActiveRecord::Migration[7.1]
  def change
    add_column :technologies, :emoji, :string
  end
end
