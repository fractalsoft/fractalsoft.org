# Apache Cordova
# https://cordova.apache.org/
technology_cordova = Technology.where(slug: 'cordova').first_or_initialize
icon_cordova_original_svg = File.read('./db/seeds/technology/svg/apache_cordova.svg')
# icon_cordova_wordmark_svg = File.read('./db/seeds/technology/svg/cordova-wordmark.svg')
technology_cordova.assign_attributes(
  name: 'Cordova',
  title: 'Apache Cordova',
  icon: icon_cordova_original_svg
  # icon_wordmark: icon_cordova_wordmark_svg
)
technology_cordova.save
technology_cordova.mobile!
