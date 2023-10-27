# Sinatra
technology_sinatra = Technology.where(slug: 'sinatra').first_or_initialize
icon_sinatra_svg = File.read('./db/seeds/technology/svg/sinatra.svg')
technology_sinatra.assign_attributes(
  github_repo: 'sinatra/sinatra',
  icon: icon_sinatra_svg,
  name: 'sinatra',
  title: 'Sinatra',
  website_url: 'https://sinatrarb.com/'
)
technology_sinatra.save
technology_sinatra.backend!
