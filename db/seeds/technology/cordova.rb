# frozen_string_literal: true

# Apache Cordova
technology_cordova = Technology.where(slug: 'cordova').first_or_initialize
icon_cordova_original_svg = File.read('./db/seeds/technology/svg/apache_cordova.svg')
_icon_cordova_wordmark_svg = File.read('./db/seeds/technology/svg/apache_cordova-wordmark.svg')
technology_cordova.assign_attributes(
  icon: icon_cordova_original_svg,
  name: 'Cordova',
  title: 'Apache Cordova',
  website_url: 'https://cordova.apache.org/'
)
technology_cordova.save
technology_cordova.mobile!
