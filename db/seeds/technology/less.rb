# Less
technology_less = Technology.where(slug: 'less').first_or_initialize
icon_less_wordmark_svg = File.read('./db/seeds/technology/svg/less-plain-wordmark.svg')
technology_less.assign_attributes(
  github_repo: 'less/less.js',
  icon_wordmark: icon_less_wordmark_svg,
  name: 'less',
  title: 'Less',
  website_url: 'https://lesscss.org/'
)
technology_less.save
technology_less.web!
