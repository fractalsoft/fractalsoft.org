# minitest
technology_minitest = Technology.where(slug: 'minitest').first_or_initialize
technology_minitest.assign_attributes(
  github_repo: 'minitest/minitest',
  name: 'minitest',
  title: 'minitest',
  website_url: 'https://docs.seattlerb.org/minitest/'
)
technology_minitest.save
technology_minitest.testing!
