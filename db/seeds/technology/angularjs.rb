# Angularjs
technology_angularjs = Technology.where(slug: 'angularjs').first_or_initialize
icon_angularjs_original_svg = File.read('./db/seeds/technology/svg/angularjs-original.svg')
icon_angularjs_wordmark_svg = File.read('./db/seeds/technology/svg/angularjs-original-wordmark.svg')
technology_angularjs.assign_attributes(
  emoji: '🅰️📐🔄',
  github_repo: 'angular/angular',
  icon: icon_angularjs_original_svg,
  icon_wordmark: icon_angularjs_wordmark_svg,
  name: 'angularjs',
  title: 'AngularJS',
  website_url: 'https://angular.io/'
)
technology_angularjs.save
technology_angularjs.frontend!
