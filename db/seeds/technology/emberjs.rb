# Ember.js
technology_emberjs = Technology.where(slug: 'emberjs').first_or_initialize
icon_emberjs_wordmark_svg = File.read('./db/seeds/technology/svg/ember-original-wordmark.svg')
technology_emberjs.assign_attributes(
  emoji: '🐹🔥',
  github_repo: 'emberjs/ember.js',
  icon_wordmark: icon_emberjs_wordmark_svg,
  name: 'ember',
  title: 'Ember.js',
  website_url: 'https://emberjs.com/'
)
technology_emberjs.save
technology_emberjs.frontend!
