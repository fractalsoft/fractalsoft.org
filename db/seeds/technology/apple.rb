# Apple
technology_apple = Technology.where(slug: 'apple').first_or_initialize
icon_apple_original_svg = File.read('./db/seeds/technology/svg/apple-original.svg')
technology_apple.assign_attributes(
  name: 'apple',
  title: 'Apple',
  icon: icon_apple_original_svg
)
technology_apple.save
technology_apple.os!
