class AddColumnsWithUrlsToTechnologies < ActiveRecord::Migration[7.0]
  def change
    change_table :technologies do |table|
      table.string :github_repo
      table.virtual :github_url, type: :string, as: "'https://github.com/' || github_repo", stored: true
      table.string :website_url
    end
  end
end
