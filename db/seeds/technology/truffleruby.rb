# frozen_string_literal: true

# TruffleRuby
technology_truffleruby = Technology.where(slug: 'truffleruby').first_or_initialize
icon_truffleruby_svg = File.read('./db/seeds/technology/svg/truffleruby.svg')
technology_truffleruby.assign_attributes(
  emoji: '🔍💎🚀',
  github_repo: 'oracle/truffleruby',
  icon: icon_truffleruby_svg,
  name: 'truffleruby',
  title: 'TruffleRuby'
)
technology_truffleruby.save
technology_truffleruby.backend!
