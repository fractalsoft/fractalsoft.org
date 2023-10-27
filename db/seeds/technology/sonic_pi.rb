# Sonic pi
technology_sonic_pi = Technology.where(slug: 'sonic-pi').first_or_initialize
icon_sonic_pi_svg = File.read('./db/seeds/technology/svg/sonic-pi.svg')
technology_sonic_pi.assign_attributes(
  github_repo: 'sonic-pi-net/sonic-pi',
  icon: icon_sonic_pi_svg,
  name: 'sonic pi',
  title: 'Sonic Pi',
  website_url: 'https://sonic-pi.net/'
)
technology_sonic_pi.save
technology_sonic_pi.tool!
