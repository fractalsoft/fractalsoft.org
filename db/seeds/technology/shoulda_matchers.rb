# Shoulda Matchers
technology_shoulda_matchers = Technology.where(slug: 'shoulda-matchers').first_or_initialize
icon_shoulda_matchers_original_svg = File.read('./db/seeds/technology/svg/shoulda-matchers.svg')
_icon_shoulda_matchers_wordmark_svg = File.read('./db/seeds/technology/svg/shoulda-matchers-wordmark.svg')
technology_shoulda_matchers.assign_attributes(
  emoji: '🧦',
  github_repo: 'thoughtbot/shoulda-matchers',
  icon: icon_shoulda_matchers_original_svg,
  name: 'Shoulda Matchers',
  title: 'Shoulda Matchers',
  website_url: 'https://matchers.shoulda.io/'
)
technology_shoulda_matchers.save
technology_shoulda_matchers.testing!
