# Slackware
# http://www.slackware.com/
technology_slackware_linux = Technology.where(slug: 'slackware').first_or_initialize
icon_slackware_linux_original_svg = File.read('./db/seeds/technology/svg/slackware.svg')
technology_slackware_linux.assign_attributes(
  name: 'slackware',
  title: 'Slackware',
  icon: icon_slackware_linux_original_svg
)
technology_slackware_linux.save
technology_slackware_linux.operating_system!
