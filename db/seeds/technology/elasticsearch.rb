# Elasticsearch
# https://www.elastic.co/elasticsearch/
technology_elasticsearch = Technology.where(slug: 'elasticsearch').first_or_initialize
icon_elasticsearch_original_svg = File.read('./db/seeds/technology/svg/elasticsearch.svg')
technology_elasticsearch.assign_attributes(
  name: 'elasticsearch',
  title: 'Elasticsearch',
  icon: icon_elasticsearch_original_svg
)
technology_elasticsearch.save
technology_elasticsearch.search_engine!
