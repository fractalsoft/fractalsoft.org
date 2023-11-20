# minitest
technology_minitest = Technology.where(slug: 'minitest').first_or_initialize
icon_minitest_svg = File.read('./db/seeds/technology/svg/minitest-spec-rails.svg')
technology_minitest.assign_attributes(
  emoji: '🧪📝',
  github_repo: 'minitest/minitest',
  icon: icon_minitest_svg,
  name: 'minitest',
  title: 'minitest',
  website_url: 'https://docs.seattlerb.org/minitest/'
)
technology_minitest.save
technology_minitest.testing!
