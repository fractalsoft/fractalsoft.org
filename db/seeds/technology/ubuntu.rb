# Ubuntu
technology_ubuntu = Technology.where(slug: 'ubuntu').first_or_initialize
icon_ubuntu_plain_svg = File.read('./db/seeds/technology/svg/ubuntu-plain.svg')
icon_ubuntu_wordmark_svg = File.read('./db/seeds/technology/svg/ubuntu-plain-wordmark.svg')
technology_ubuntu.assign_attributes(
  icon: icon_ubuntu_plain_svg,
  icon_wordmark: icon_ubuntu_wordmark_svg,
  name: 'ubuntu',
  title: 'Ubuntu',
  website_url: 'https://ubuntu.com/'
)
technology_ubuntu.save
technology_ubuntu.operating_system!
