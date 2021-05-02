# Leaflet
# https://leafletjs.com/
technology_leaflet = Technology.where(slug: 'leaflet').first_or_initialize
icon_leaflet_wordmark_svg = File.read('./db/seeds/technology/svg/leaflet-wordmark.svg')
technology_leaflet.assign_attributes(
  name: 'leaflet',
  title: 'Leaflet',
  icon_wordmark: icon_leaflet_wordmark_svg
)
technology_leaflet.save
technology_leaflet.frontend!
