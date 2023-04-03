# Slax (linux)
# https://www.slax.org/
technology_slax_linux = Technology.where(slug: 'slax-linux').first_or_initialize
icon_slax_linux_svg = File.read('./db/seeds/technology/svg/slax_linux.svg')
technology_slax_linux.assign_attributes(
  name: 'slax',
  title: 'Slax',
  icon: icon_slax_linux_svg
)
technology_slax_linux.save
technology_slax_linux.os!
