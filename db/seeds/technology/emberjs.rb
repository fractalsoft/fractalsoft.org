# Ember.js
# https://emberjs.com/
technology_emberjs = Technology.where(slug: 'emberjs').first_or_initialize
icon_emberjs_wordmark_svg = File.read('./db/seeds/technology/svg/ember-original-wordmark.svg')
technology_emberjs.assign_attributes(
  name: 'ember',
  title: 'Ember.js',
  icon_wordmark: icon_emberjs_wordmark_svg
)
technology_emberjs.save
technology_emberjs.frontend!
