# Hound CI
# https://houndci.com/
technology_hound_ci = Technology.where(slug: 'hound-ci').first_or_initialize
icon_hound_ci_svg = File.read('./db/seeds/technology/svg/houndci.svg')
technology_hound_ci.assign_attributes(
  name: 'Hound',
  title: 'Hound CI',
  icon: icon_hound_ci_svg
)
technology_hound_ci.save
technology_hound_ci.continuous_integration!
