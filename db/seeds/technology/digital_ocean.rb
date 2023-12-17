# frozen_string_literal: true

# Digial Ocean
technology_digital_ocean = Technology.where(slug: 'digital-ocean').first_or_initialize
icon_digital_ocean_original_svg = File.read('./db/seeds/technology/svg/digitalocean-original.svg')
icon_digital_ocean_wordmark_svg = File.read('./db/seeds/technology/svg/digitalocean-original-wordmark.svg')
technology_digital_ocean.assign_attributes(
  icon: icon_digital_ocean_original_svg,
  icon_wordmark: icon_digital_ocean_wordmark_svg,
  name: 'digital_ocean',
  title: 'DigitalOcean',
  website_url: 'https://www.digitalocean.com/'
)
technology_digital_ocean.save
technology_digital_ocean.cloud_computing!
