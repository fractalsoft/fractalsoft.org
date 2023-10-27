# Cypress
technology_cypress = Technology.where(slug: 'cypress').first_or_initialize
icon_cypress_original_svg = File.read('./db/seeds/technology/svg/cypress.svg')
technology_cypress.assign_attributes(
  github_repo: 'cypress-io/cypress',
  name: 'cypress',
  title: 'Cypress',
  icon: icon_cypress_original_svg,
  website_url: 'https://www.cypress.io/'
)
technology_cypress.save
technology_cypress.testing!
