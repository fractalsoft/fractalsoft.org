# CoffeeScript
# https://coffeescript.org/
technology_coffeescript = Technology.where(slug: 'coffeescript').first_or_initialize
icon_coffeescript_original_svg = File.read('./db/seeds/technology/svg/coffeescript-original.svg')
icon_coffeescript_wordmark_svg = File.read('./db/seeds/technology/svg/coffeescript-original-wordmark.svg')
technology_coffeescript.assign_attributes(
  name: 'coffeescript',
  title: 'CoffeeScript',
  icon: icon_coffeescript_original_svg,
  icon_wordmark: icon_coffeescript_wordmark_svg
)
technology_coffeescript.save
technology_coffeescript.frontend!
