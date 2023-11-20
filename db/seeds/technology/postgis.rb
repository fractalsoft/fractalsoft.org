# PostGIS
technology_postgis = Technology.where(slug: 'postgis').first_or_initialize
icon_postgis_brand_svg = File.read('./db/seeds/technology/svg/postgis-brand.svg')
_icon_postgis_original_svg = File.read('./db/seeds/technology/svg/postgis.svg')
technology_postgis.assign_attributes(
  emoji: '🌐🗺️📊',
  github_repo: 'postgis/postgis',
  icon: icon_postgis_brand_svg,
  name: 'postgis',
  title: 'PostGIS',
  website_url: 'https://postgis.net/'
)
technology_postgis.save
technology_postgis.tool!
