# frozen_string_literal: true

# Alpine Linux
technology_alpine_linux = Technology.where(slug: 'alpine-linux').first_or_initialize
icon_alpine_linux_svg = File.read('./db/seeds/technology/svg/alpine_linux.svg')
technology_alpine_linux.assign_attributes(
  icon: icon_alpine_linux_svg,
  name: 'alpine',
  title: 'Alpine',
  website_url: 'https://alpinelinux.org/'
)
technology_alpine_linux.save
technology_alpine_linux.operating_system!
