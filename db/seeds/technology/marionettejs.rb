# Marionette.js
# https://marionettejs.com/
technology_marionettejs = Technology.where(slug: 'marionettejs').first_or_initialize
icon_marionettejs_original_svg = File.read('./db/seeds/technology/svg/marionettejs.svg')
technology_marionettejs.assign_attributes(
  name: 'marionettejs',
  title: 'Marionette.js',
  icon: icon_marionettejs_original_svg
)
technology_marionettejs.save
technology_marionettejs.frontend!
