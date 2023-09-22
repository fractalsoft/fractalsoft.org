class AddColumnsWithUrlsToPeople < ActiveRecord::Migration[7.0]
  def change
    change_table :people do |table|
      table.rename :blog, :blog_url
      table.rename :website, :website_url
      table.string :youtube
      table.virtual :facebook_url, type: :string, as: "'https://facebook.com/' || facebook", stored: true
      table.virtual :github_url, type: :string, as: "'https://github.com/' || github", stored: true
      table.virtual :instagram_url, type: :string, as: "'https://instagram.com/' || instagram", stored: true
      table.virtual :linkedin_url, type: :string, as: "'https://linkedin.com/in/' || linkedin", stored: true
      table.virtual :twitter_url, type: :string, as: "'https://twitter.com/' || twitter", stored: true
      table.virtual :vimeo_url, type: :string, as: "'https://vimeo.com/' || vimeo", stored: true
      table.virtual :youtube_url, type: :string, as: "'https://youtube.com/@' || youtube", stored: true
    end
  end
end
