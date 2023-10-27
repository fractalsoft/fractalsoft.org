# openSUSE
technology_opensuse = Technology.where(slug: 'opensuse').first_or_initialize
icon_opensuse_original_svg = File.read('./db/seeds/technology/svg/opensuse-original.svg')
icon_opensuse_wordmark_svg = File.read('./db/seeds/technology/svg/opensuse-original-wordmark.svg')
technology_opensuse.assign_attributes(
  icon: icon_opensuse_original_svg,
  icon_wordmark: icon_opensuse_wordmark_svg,
  name: 'openSUSE',
  title: 'openSUSE',
  website_url: 'https://www.opensuse.org/'
)
technology_opensuse.save
technology_opensuse.operating_system!
