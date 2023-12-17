# frozen_string_literal: true

# Debian
technology_debian = Technology.where(slug: 'debian').first_or_initialize
icon_debian_original_svg = File.read('./db/seeds/technology/svg/debian-original.svg')
icon_debian_wordmark_svg = File.read('./db/seeds/technology/svg/debian-original-wordmark.svg')
technology_debian.assign_attributes(
  icon: icon_debian_original_svg,
  icon_wordmark: icon_debian_wordmark_svg,
  name: 'debian',
  title: 'debian',
  website_url: 'https://www.debian.org/'
)
technology_debian.save
technology_debian.operating_system!
