# Sinatra
# https://sinatrarb.com/
technology_sinatra = Technology.where(slug: 'sinatra').first_or_initialize
icon_sinatra_svg = File.read('./db/seeds/technology/svg/sinatra.svg')
technology_sinatra.assign_attributes(
  name: 'sinatra',
  title: 'Sinatra',
  icon: icon_sinatra_svg
)
technology_sinatra.save
technology_sinatra.backend!
