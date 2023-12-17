# frozen_string_literal: true

# GitHub Actions
# https://docs.github.com/en/actions
technology_github_actions = Technology.where(slug: 'github-actions').first_or_initialize
icon_github_actions_svg = File.read('./db/seeds/technology/svg/github-actions.svg')
technology_github_actions.assign_attributes(
  icon: icon_github_actions_svg,
  name: 'GitHub Actions',
  title: 'GitHub Actions',
  website_url: 'https://github.com/features/actions'
)
technology_github_actions.save
technology_github_actions.continuous_integration!
