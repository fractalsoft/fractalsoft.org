# TruffleRuby
# https://github.com/oracle/truffleruby
technology_truffleruby = Technology.where(slug: 'truffleruby').first_or_initialize
icon_truffleruby_svg = File.read('./db/seeds/technology/svg/truffleruby.svg')
technology_truffleruby.assign_attributes(
  name: 'truffleruby',
  title: 'TruffleRuby',
  icon: icon_truffleruby_svg
)
technology_truffleruby.save
technology_truffleruby.backend!
