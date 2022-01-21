# Sonic pi
# https://sonic-pi.net/
technology_sonic_pi = Technology.where(slug: 'sonic-pi').first_or_initialize
icon_sonic_pi_svg = File.read('./db/seeds/technology/svg/sonic-pi.svg')
technology_sonic_pi.assign_attributes(
  name: 'sonic pi',
  title: 'Sonic Pi',
  icon: icon_sonic_pi_svg
)
technology_sonic_pi.save
technology_sonic_pi.tool!
