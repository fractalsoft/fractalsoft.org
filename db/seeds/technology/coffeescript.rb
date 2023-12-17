# frozen_string_literal: true

# CoffeeScript
technology_coffeescript = Technology.where(slug: 'coffeescript').first_or_initialize
icon_coffeescript_original_svg = File.read('./db/seeds/technology/svg/coffeescript-original.svg')
icon_coffeescript_wordmark_svg = File.read('./db/seeds/technology/svg/coffeescript-original-wordmark.svg')
technology_coffeescript.assign_attributes(
  github_repo: 'jashkenas/coffeescript/',
  icon: icon_coffeescript_original_svg,
  icon_wordmark: icon_coffeescript_wordmark_svg,
  name: 'coffeescript',
  title: 'CoffeeScript',
  website_url: 'https://coffeescript.org/'
)
technology_coffeescript.save
technology_coffeescript.frontend!
