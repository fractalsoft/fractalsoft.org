# frozen_string_literal: true

# Apache
technology_apache = Technology.where(slug: 'apache').first_or_initialize
icon_apache_original_svg = File.read('./db/seeds/technology/svg/apache-original.svg')
icon_apache_wordmark_svg = File.read('./db/seeds/technology/svg/apache-original-wordmark.svg')
technology_apache.assign_attributes(
  name: 'apache',
  title: 'Apache HTTP Server',
  icon: icon_apache_original_svg,
  icon_wordmark: icon_apache_wordmark_svg,
  website_url: 'https://httpd.apache.org/'
)
technology_apache.save
technology_apache.web_server!
