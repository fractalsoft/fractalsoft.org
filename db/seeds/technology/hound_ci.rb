# frozen_string_literal: true

# Hound CI
technology_hound_ci = Technology.where(slug: 'hound-ci').first_or_initialize
icon_hound_ci_svg = File.read('./db/seeds/technology/svg/houndci.svg')
technology_hound_ci.assign_attributes(
  github_repo: 'houndci/hound',
  icon: icon_hound_ci_svg,
  name: 'Hound',
  title: 'Hound CI',
  website_url: 'https://houndci.com/'
)
technology_hound_ci.save
technology_hound_ci.continuous_integration!
