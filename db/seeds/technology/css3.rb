# frozen_string_literal: true

# CSS3
technology_css3 = Technology.where(slug: 'css3').first_or_initialize
icon_css3_original_svg = File.read('./db/seeds/technology/svg/css3-original.svg')
icon_css3_wordmark_svg = File.read('./db/seeds/technology/svg/css3-original-wordmark.svg')
technology_css3.assign_attributes(
  icon: icon_css3_original_svg,
  icon_wordmark: icon_css3_wordmark_svg,
  name: 'css3',
  title: 'CSS3'
)
technology_css3.save
technology_css3.web!
