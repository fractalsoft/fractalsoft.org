# frozen_string_literal: true

# Marionette.js
technology_marionettejs = Technology.where(slug: 'marionettejs').first_or_initialize
icon_marionettejs_original_svg = File.read('./db/seeds/technology/svg/marionettejs.svg')
technology_marionettejs.assign_attributes(
  github_repo: 'marionettejs/backbone.marionette',
  icon: icon_marionettejs_original_svg,
  name: 'marionettejs',
  title: 'Marionette.js',
  website_url: 'https://marionettejs.com/'
)
technology_marionettejs.save
technology_marionettejs.frontend!
