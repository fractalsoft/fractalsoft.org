# Gatsby
# https://www.gatsbyjs.com/
technology_gatsby = Technology.where(slug: 'gatsby').first_or_initialize
icon_gatsby_original_svg = File.read('./db/seeds/technology/svg/gatsby-original.svg')
icon_gatsby_wordmark_svg = File.read('./db/seeds/technology/svg/gatsby-original-wordmark.svg')
technology_gatsby.assign_attributes(
  name: 'gatsby',
  title: 'Gatsby',
  icon: icon_gatsby_original_svg,
  icon_wordmark: icon_gatsby_wordmark_svg
)
technology_gatsby.save
technology_gatsby.frontend!
