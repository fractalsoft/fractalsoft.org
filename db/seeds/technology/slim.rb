# Slim
# https://github.com/slim-template/slim
technology_slim = Technology.where(slug: 'slim').first_or_initialize
icon_slim_svg = File.read('./db/seeds/technology/svg/slim.svg')
technology_slim.assign_attributes(
  name: 'Slim',
  title: 'Slim Template Language',
  icon: icon_slim_svg
)
technology_slim.save
technology_slim.web!
