# RuboCop
# https://rubocop.org/
technology_rubocop = Technology.where(slug: 'rubocop').first_or_initialize
icon_rubocop_svg = File.read('./db/seeds/technology/svg/rubocop.svg')
technology_rubocop.assign_attributes(
  github_repo: 'rubocop/rubocop',
  icon: icon_rubocop_svg,
  name: 'RuboCop',
  title: 'RuboCop',
  website_url: 'https://rubocop.org/'
)
technology_rubocop.save
technology_rubocop.linter!
