# Apache Solr
# https://solr.apache.org/
technology_solr = Technology.where(slug: 'solr').first_or_initialize
icon_solr_original_svg = File.read('./db/seeds/technology/svg/apache_solr.svg')
technology_solr.assign_attributes(
  name: 'Solr',
  title: 'Apache Solr',
  icon: icon_solr_original_svg
)
technology_solr.save
technology_solr.search_engine!
