# GraphQL
# https://graphql.org/
technology_graphql = Technology.where(slug: 'graphql').first_or_initialize
icon_graphql_svg = File.read('./db/seeds/technology/svg/graphql.svg')
technology_graphql.assign_attributes(
  name: 'graphql',
  title: 'GraphQL',
  icon: icon_graphql_svg
)
technology_graphql.save
technology_graphql.tool!
