# frozen_string_literal: true

# Fly.io
technology_fly_io = Technology.where(slug: 'fly-io').first_or_initialize
icon_fly_io_svg = File.read('./db/seeds/technology/svg/fly-io.svg')
technology_fly_io.assign_attributes(
  icon: icon_fly_io_svg,
  name: 'fly.io',
  title: 'Fly.io',
  website_url: 'https://fly.io/'
)
technology_fly_io.save
technology_fly_io.cloud_computing!
