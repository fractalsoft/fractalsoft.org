# Ferrum
# https://ferrum.rubycdp.com/
technology_ferrum = Technology.where(slug: 'ferrum').first_or_initialize
icon_ferrum_svg = File.read('./db/seeds/technology/svg/ferrum.svg')
technology_ferrum.assign_attributes(
  name: 'Ferrum',
  title: 'Ferrum - high-level API to control Chrome in Ruby',
  icon: icon_ferrum_svg
)
technology_ferrum.save
technology_ferrum.testing!
