# Jest (JavaScript Testing Framework)
# https://jestjs.io/
technology_jest = Technology.where(slug: 'jest').first_or_initialize
icon_jest_plain_svg = File.read('./db/seeds/technology/svg/jest-plain.svg')
technology_jest.assign_attributes(
  name: 'jest',
  title: 'Jest',
  icon: icon_jest_plain_svg
)
technology_jest.save
technology_jest.testing!
