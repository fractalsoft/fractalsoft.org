# GraphQL
technology_graphql = Technology.where(slug: 'graphql').first_or_initialize
icon_graphql_plain_svg = File.read('./db/seeds/technology/svg/graphql-plain.svg')
icon_graphql_wordmark_svg = File.read('./db/seeds/technology/svg/graphql-plain-wordmark.svg')
technology_graphql.assign_attributes(
  icon: icon_graphql_plain_svg,
  icon_wordmark: icon_graphql_wordmark_svg,
  name: 'graphql',
  title: 'GraphQL',
  website_url: 'https://graphql.org/'
)
technology_graphql.save
technology_graphql.tool!
