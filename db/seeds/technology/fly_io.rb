# Fly.io
# https://fly.io/
technology_fly_io = Technology.where(slug: 'fly-io').first_or_initialize
icon_fly_io_svg = File.read('./db/seeds/technology/svg/fly-io.svg')
technology_fly_io.assign_attributes(
  name: 'fly.io',
  title: 'Fly.io',
  icon: icon_fly_io_svg
)
technology_fly_io.save
technology_fly_io.cloud_computing!
