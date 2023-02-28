# Ubuntu
# https://ubuntu.com/
technology_ubuntu = Technology.where(slug: 'ubuntu').first_or_initialize
icon_ubuntu_original_svg = File.read('./db/seeds/technology/svg/ubuntu-original.svg')
icon_ubuntu_wordmark_svg = File.read('./db/seeds/technology/svg/ubuntu-original-wordmark.svg')
technology_ubuntu.assign_attributes(
  name: 'ubuntu',
  title: 'Ubuntu',
  icon: icon_ubuntu_original_svg,
  icon_wordmark: icon_ubuntu_wordmark_svg
)
technology_ubuntu.save
technology_ubuntu.os!
