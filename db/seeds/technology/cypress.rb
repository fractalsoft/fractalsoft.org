# frozen_string_literal: true

# Cypress
technology_cypress = Technology.where(slug: 'cypress').first_or_initialize
icon_cypress_original_svg = File.read('./db/seeds/technology/svg/cypress.svg')
technology_cypress.assign_attributes(
  emoji: '🌲👁️‍🗨️🚀',
  github_repo: 'cypress-io/cypress',
  icon: icon_cypress_original_svg,
  name: 'cypress',
  title: 'Cypress',
  website_url: 'https://www.cypress.io/'
)
technology_cypress.save
technology_cypress.testing!
