# frozen_string_literal: true

# Cuprite
technology_cuprite = Technology.where(slug: 'cuprite').first_or_initialize
icon_cuprite_svg = File.read('./db/seeds/technology/svg/cuprite.svg')
technology_cuprite.assign_attributes(
  emoji: '☕👁️‍🗨️🚀',
  github_repo: 'rubycdp/cuprite',
  icon: icon_cuprite_svg,
  name: 'Cuprite',
  title: 'Cuprite - Headless Chrome driver for Capybara',
  website_url: 'https://cuprite.rubycdp.com/'
)
technology_cuprite.save
technology_cuprite.testing!
