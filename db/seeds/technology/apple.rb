# Apple
technology_apple = Technology.where(slug: 'apple').first_or_initialize
icon_apple_original_svg = File.read('./db/seeds/technology/svg/apple-original.svg')
technology_apple.assign_attributes(
  emoji: '🍏',
  icon: icon_apple_original_svg,
  name: 'apple',
  title: 'Apple',
  website_url: 'https://www.apple.com/'
)
technology_apple.save
technology_apple.operating_system!
