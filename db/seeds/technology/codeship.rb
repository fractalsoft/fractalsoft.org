# CodeShip
# https://app.codeship.com/
technology_codeship = Technology.where(slug: 'codeship').first_or_initialize
icon_codeship_svg = File.read('./db/seeds/technology/svg/codeship.svg')
technology_codeship.assign_attributes(
  name: 'CodeShip',
  title: 'CodeShip',
  icon: icon_codeship_svg
)
technology_codeship.save
technology_codeship.continuous_integration!
