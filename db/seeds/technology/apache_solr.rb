# Apache Solr
technology_solr = Technology.where(slug: 'solr').first_or_initialize
icon_solr_original_svg = File.read('./db/seeds/technology/svg/apache_solr.svg')
technology_solr.assign_attributes(
  emoji: '🔍🌻',
  icon: icon_solr_original_svg,
  name: 'Solr',
  title: 'Apache Solr',
  website_url: 'https://solr.apache.org/'
)
technology_solr.save
technology_solr.search_engine!
