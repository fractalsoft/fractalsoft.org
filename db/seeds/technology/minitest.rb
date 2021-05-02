# minitest
# https://github.com/seattlerb/minitest
technology_minitest = Technology.where(slug: 'minitest').first_or_initialize
technology_minitest.assign_attributes(
  name: 'minitest',
  title: 'minitest'
)
technology_minitest.save
technology_minitest.testing!
