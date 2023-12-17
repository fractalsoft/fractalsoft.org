# frozen_string_literal: true

# Linux
technology_linux = Technology.where(slug: 'linux').first_or_initialize
icon_linux_original_svg = File.read('./db/seeds/technology/svg/linux-original.svg')
technology_linux.assign_attributes(
  emoji: '🐧🖥️',
  icon: icon_linux_original_svg,
  name: 'linux',
  title: 'GNU/Linux'
)
technology_linux.save
technology_linux.operating_system!
