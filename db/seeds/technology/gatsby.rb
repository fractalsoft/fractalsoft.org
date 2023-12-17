# frozen_string_literal: true

# Gatsby
technology_gatsby = Technology.where(slug: 'gatsby').first_or_initialize
icon_gatsby_original_svg = File.read('./db/seeds/technology/svg/gatsby-original.svg')
icon_gatsby_wordmark_svg = File.read('./db/seeds/technology/svg/gatsby-original-wordmark.svg')
technology_gatsby.assign_attributes(
  github_repo: 'gatsbyjs/gatsby',
  icon: icon_gatsby_original_svg,
  icon_wordmark: icon_gatsby_wordmark_svg,
  name: 'gatsby',
  title: 'Gatsby',
  website_url: 'https://www.gatsbyjs.com/'
)
technology_gatsby.save
technology_gatsby.frontend!
