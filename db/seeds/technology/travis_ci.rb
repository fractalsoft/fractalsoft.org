# Travis CI
# https://www.travis-ci.com/
technology_travis_ci = Technology.where(slug: 'travis-ci').first_or_initialize
icon_travis_ci_svg = File.read('./db/seeds/technology/svg/travis-ci.svg')
technology_travis_ci.assign_attributes(
  name: 'Travis CI',
  title: 'Travis CI',
  icon: icon_travis_ci_svg
)
technology_travis_ci.save
technology_travis_ci.continuous_integration!
