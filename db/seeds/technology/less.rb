# Less
# http://lesscss.org/
technology_less = Technology.where(slug: 'less').first_or_initialize
icon_less_wordmark_svg = File.read('./db/seeds/technology/svg/less-plain-wordmark.svg')
technology_less.assign_attributes(
  name: 'less',
  title: 'Less',
  icon_wordmark: icon_less_wordmark_svg
)
technology_less.save
technology_less.web!
