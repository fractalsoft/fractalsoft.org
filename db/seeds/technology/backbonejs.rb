# frozen_string_literal: true

# Backbone.js
technology_backbonejs = Technology.where(slug: 'backbonejs').first_or_initialize
icon_backbonejs_original_svg = File.read('./db/seeds/technology/svg/backbonejs-original.svg')
icon_backbonejs_wordmark_svg = File.read('./db/seeds/technology/svg/backbonejs-original-wordmark.svg')
technology_backbonejs.assign_attributes(
  github_repo: 'jashkenas/backbone',
  icon: icon_backbonejs_original_svg,
  icon_wordmark: icon_backbonejs_wordmark_svg,
  name: 'backbonejs',
  title: 'Backbone.js',
  website_url: 'https://backbonejs.org/'
)
technology_backbonejs.save
technology_backbonejs.frontend!
