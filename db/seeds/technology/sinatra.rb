# Sinatra
# https://sinatrarb.com/
technology_sinatra = Technology.where(slug: 'sinatra').first_or_initialize
technology_sinatra.assign_attributes(
  name: 'sinatra',
  title: 'Sinatra'
)
technology_sinatra.save
technology_sinatra.backend!
