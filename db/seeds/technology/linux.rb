# Linux
technology_linux = Technology.where(slug: 'linux').first_or_initialize
icon_linux_original_svg = File.read('./db/seeds/technology/svg/linux-original.svg')
technology_linux.assign_attributes(
  name: 'linux',
  title: 'GNU/Linux',
  icon: icon_linux_original_svg
)
technology_linux.save
technology_linux.operating_system!
