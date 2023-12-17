# frozen_string_literal: true

# Jest (JavaScript Testing Framework)
technology_jest = Technology.where(slug: 'jest').first_or_initialize
icon_jest_plain_svg = File.read('./db/seeds/technology/svg/jest-plain.svg')
technology_jest.assign_attributes(
  github_repo: 'jestjs/jest',
  icon: icon_jest_plain_svg,
  name: 'jest',
  title: 'Jest',
  website_url: 'https://jestjs.io/'
)
technology_jest.save
technology_jest.testing!
