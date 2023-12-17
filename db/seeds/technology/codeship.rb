# frozen_string_literal: true

# CodeShip
technology_codeship = Technology.where(slug: 'codeship').first_or_initialize
icon_codeship_svg = File.read('./db/seeds/technology/svg/codeship.svg')
technology_codeship.assign_attributes(
  icon: icon_codeship_svg,
  name: 'CodeShip',
  title: 'CodeShip',
  website_url: 'https://app.codeship.com/'
)
technology_codeship.save
technology_codeship.continuous_integration!
