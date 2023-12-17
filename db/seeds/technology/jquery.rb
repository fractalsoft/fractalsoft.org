# frozen_string_literal: true

# jQuery
technology_jquery = Technology.where(slug: 'jquery').first_or_initialize
icon_jquery_original_svg = File.read('./db/seeds/technology/svg/jquery-original.svg')
icon_jquery_wordmark_svg = File.read('./db/seeds/technology/svg/jquery-original-wordmark.svg')
technology_jquery.assign_attributes(
  github_repo: 'jquery/jquery',
  icon: icon_jquery_original_svg,
  icon_wordmark: icon_jquery_wordmark_svg,
  name: 'jquery',
  title: 'jQuery',
  website_url: 'https://jquery.com/'
)
technology_jquery.save
technology_jquery.frontend!
