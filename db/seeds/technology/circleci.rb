# CircleCI
# https://circleci.com/
technology_circleci = Technology.where(slug: 'circle-ci').first_or_initialize
icon_circleci_plain_svg = File.read('./db/seeds/technology/svg/circleci-plain.svg')
icon_circleci_wordmark_svg = File.read('./db/seeds/technology/svg/circleci-plain-wordmark.svg')
technology_circleci.assign_attributes(
  name: 'CircleCI',
  title: 'CircleCI',
  icon: icon_circleci_plain_svg,
  icon_wordmark: icon_circleci_wordmark_svg
)
technology_circleci.save
technology_circleci.continuous_integration!
