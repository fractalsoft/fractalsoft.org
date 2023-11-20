# Rspec
technology_rspec = Technology.where(slug: 'rspec').first_or_initialize
icon_rspec_original_svg = File.read('./db/seeds/technology/svg/rspec-original.svg')
icon_rspec_wordmark_svg = File.read('./db/seeds/technology/svg/rspec-original-wordmark.svg')
technology_rspec.assign_attributes(
  emoji: '🚥📝',
  github_repo: 'rspec/rspec-core',
  icon: icon_rspec_original_svg,
  icon_wordmark: icon_rspec_wordmark_svg,
  name: 'rspec',
  title: 'RSpec',
  website_url: 'https://rspec.info/'
)
technology_rspec.save
technology_rspec.testing!
