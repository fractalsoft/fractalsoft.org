# GraphQL
# https://graphql.org/
technology_graphql = Technology.where(slug: 'graphql').first_or_initialize
icon_graphql_plain_svg = File.read('./db/seeds/technology/svg/graphql-plain.svg')
icon_graphql_wordmark_svg = File.read('./db/seeds/technology/svg/graphql-plain-wordmark.svg')
technology_graphql.assign_attributes(
  name: 'graphql',
  title: 'GraphQL',
  icon: icon_graphql_plain_svg,
  icon_wordmark: icon_graphql_wordmark_svg
)
technology_graphql.save
technology_graphql.tool!
