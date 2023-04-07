# RuboCop
# https://rubocop.org/
technology_rubocop = Technology.where(slug: 'rubocop').first_or_initialize
icon_rubocop_svg = File.read('./db/seeds/technology/svg/rubocop.svg')
technology_rubocop.assign_attributes(
  name: 'RuboCop',
  title: 'RuboCop',
  icon: icon_rubocop_svg
)
technology_rubocop.save
technology_rubocop.linter!
