# Ruby on Rails
# https://rubyonrails.org/
technology_ruby_on_rails = Technology.where(slug: 'ruby-on-rails').first_or_initialize
icon_ruby_on_rails_wordmark_svg = File.read('./db/seeds/technology/svg/rails-original-wordmark.svg')
technology_ruby_on_rails.assign_attributes(
  name: 'rails',
  title: 'Ruby on Rails',
  icon_wordmark: icon_ruby_on_rails_wordmark_svg
)
technology_ruby_on_rails.save
technology_ruby_on_rails.backend!
