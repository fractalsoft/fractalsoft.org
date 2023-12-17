# frozen_string_literal: true

# Ferrum
technology_ferrum = Technology.where(slug: 'ferrum').first_or_initialize
icon_ferrum_svg = File.read('./db/seeds/technology/svg/ferrum.svg')
technology_ferrum.assign_attributes(
  github_repo: 'rubycdp/ferrum',
  icon: icon_ferrum_svg,
  name: 'Ferrum',
  title: 'Ferrum - high-level API to control Chrome in Ruby',
  website_url: 'https://ferrum.rubycdp.com/'
)
technology_ferrum.save
technology_ferrum.testing!
