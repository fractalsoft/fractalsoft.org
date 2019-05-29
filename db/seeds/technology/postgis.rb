# PostGIS
# https://postgis.net/
technology_postgis = Technology.where(slug: 'postgis').first_or_initialize
icon_postgis_original_svg = File.read('./db/seeds/technology/svg/postgis.svg')
technology_postgis.assign_attributes(
  name: 'postgis',
  title: 'PostGIS',
  icon: icon_postgis_original_svg
)
technology_postgis.save
technology_postgis.tool!
