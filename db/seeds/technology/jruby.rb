# JRuby
technology_jruby = Technology.where(slug: 'jruby').first_or_initialize
icon_jruby_svg = File.read('./db/seeds/technology/svg/jruby.svg')
technology_jruby.assign_attributes(
  github_repo: 'jruby/jruby',
  icon: icon_jruby_svg,
  name: 'jruby',
  title: 'JRuby',
  website_url: 'https://www.jruby.org/'
)
technology_jruby.save
technology_jruby.backend!
