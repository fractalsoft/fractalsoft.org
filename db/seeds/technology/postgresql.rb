# frozen_string_literal: true

# PostgreSQL
technology_postgresql = Technology.where(slug: 'postgresql').first_or_initialize
icon_postgresql_original_svg = File.read('./db/seeds/technology/svg/postgresql-original.svg')
icon_postgresql_wordmark_svg = File.read('./db/seeds/technology/svg/postgresql-original-wordmark.svg')
technology_postgresql.assign_attributes(
  emoji: '🐘📊',
  icon: icon_postgresql_original_svg,
  icon_wordmark: icon_postgresql_wordmark_svg,
  name: 'postgresql',
  title: 'PostgreSQL',
  website_url: 'https://www.postgresql.org/'
)
technology_postgresql.save
technology_postgresql.database!
