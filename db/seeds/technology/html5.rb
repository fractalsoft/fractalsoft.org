# frozen_string_literal: true

# HTML5
technology_html5 = Technology.where(slug: 'html5').first_or_initialize
icon_html5_original_svg = File.read('./db/seeds/technology/svg/html5-original.svg')
icon_html5_wordmark_svg = File.read('./db/seeds/technology/svg/html5-original-wordmark.svg')
technology_html5.assign_attributes(
  icon: icon_html5_original_svg,
  icon_wordmark: icon_html5_wordmark_svg,
  name: 'html5',
  title: 'HTML5'
)
technology_html5.save
technology_html5.web!
