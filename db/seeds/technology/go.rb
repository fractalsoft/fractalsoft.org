# frozen_string_literal: true

# Go (golang)
technology_go = Technology.where(slug: 'go').first_or_initialize
icon_go_original_svg = File.read('./db/seeds/technology/svg/go-original.svg')
icon_go_wordmark_svg = File.read('./db/seeds/technology/svg/go-original-wordmark.svg')
technology_go.assign_attributes(
  emoji: '🐹',
  github_repo: 'golang/go',
  icon: icon_go_original_svg,
  icon_wordmark: icon_go_wordmark_svg,
  name: 'go',
  title: 'Go',
  website_url: 'https://go.dev/'
)
technology_go.save
technology_go.backend!
