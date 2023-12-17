# frozen_string_literal: true

# GitHub
technology_github = Technology.where(slug: 'github').first_or_initialize
icon_github_original_svg = File.read('./db/seeds/technology/svg/github-original.svg')
icon_github_wordmark_svg = File.read('./db/seeds/technology/svg/github-original-wordmark.svg')
technology_github.assign_attributes(
  icon: icon_github_original_svg,
  icon_wordmark: icon_github_wordmark_svg,
  name: 'github',
  title: 'GitHub',
  website_url: 'https://github.com/'
)
technology_github.save
technology_github.tool!
