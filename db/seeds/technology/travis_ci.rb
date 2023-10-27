# Travis CI
technology_travis_ci = Technology.where(slug: 'travis-ci').first_or_initialize
icon_travis_ci_svg = File.read('./db/seeds/technology/svg/travis-ci.svg')
technology_travis_ci.assign_attributes(
  icon: icon_travis_ci_svg,
  name: 'Travis CI',
  title: 'Travis CI',
  website_url: 'https://www.travis-ci.com/'
)
technology_travis_ci.save
technology_travis_ci.continuous_integration!
