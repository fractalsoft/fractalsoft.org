# frozen_string_literal: true

# OpenSearch
technology_opensearch = Technology.where(slug: 'opensearch').first_or_initialize
icon_opensearch_original_svg = File.read('./db/seeds/technology/svg/opensearch_logo_default.svg')
icon_opensearch_wordmark_svg = File.read('./db/seeds/technology/svg/opensearch_mark_default.svg')
technology_opensearch.assign_attributes(
  emoji: '🔍🌐🔓',
  github_repo: 'opensearch-project/OpenSearch',
  icon: icon_opensearch_original_svg,
  icon_wordmark: icon_opensearch_wordmark_svg,
  name: 'opensearch',
  title: 'OpenSearch',
  website_url: 'https://opensearch.org/'
)
technology_opensearch.save
technology_opensearch.search_engine!
