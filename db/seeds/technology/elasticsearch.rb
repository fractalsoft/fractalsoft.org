# Elasticsearch
technology_elasticsearch = Technology.where(slug: 'elasticsearch').first_or_initialize
icon_elasticsearch_original_svg = File.read('./db/seeds/technology/svg/elasticsearch.svg')
technology_elasticsearch.assign_attributes(
  emoji: '🔍🌐📈',
  github_repo: 'elastic/elasticsearch',
  icon: icon_elasticsearch_original_svg,
  name: 'elasticsearch',
  title: 'Elasticsearch',
  website_url: 'https://www.elastic.co/elasticsearch/'
)
technology_elasticsearch.save
technology_elasticsearch.search_engine!
