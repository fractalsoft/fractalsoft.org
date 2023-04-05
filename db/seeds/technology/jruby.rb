# JRuby
# https://www.jruby.org/
technology_jruby = Technology.where(slug: 'jruby').first_or_initialize
icon_jruby_svg = File.read('./db/seeds/technology/svg/jruby.svg')
technology_jruby.assign_attributes(
  name: 'jruby',
  title: 'JRuby',
  icon: icon_jruby_svg
)
technology_jruby.save
technology_jruby.backend!
