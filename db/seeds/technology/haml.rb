# frozen_string_literal: true

# Haml
technology_haml = Technology.where(slug: 'haml').first_or_initialize
icon_haml_svg = File.read('./db/seeds/technology/svg/haml.svg')
icon_haml_wordmark_svg = File.read('./db/seeds/technology/svg/haml-wordmark.svg')
technology_haml.assign_attributes(
  github_repo: 'haml/haml',
  icon: icon_haml_svg,
  icon_wordmark: icon_haml_wordmark_svg,
  name: 'Haml',
  title: 'HTML Abstraction Markup Language',
  website_url: 'https://haml.info/'
)
technology_haml.save
technology_haml.web!
