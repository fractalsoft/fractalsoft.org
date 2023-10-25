# Cuprite
# https://cuprite.rubycdp.com/
technology_cuprite = Technology.where(slug: 'cuprite').first_or_initialize
icon_cuprite_svg = File.read('./db/seeds/technology/svg/cuprite.svg')
technology_cuprite.assign_attributes(
  name: 'Cuprite',
  title: 'Cuprite - Headless Chrome driver for Capybara',
  icon: icon_cuprite_svg
)
technology_cuprite.save
technology_cuprite.testing!
