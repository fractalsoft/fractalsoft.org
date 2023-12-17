# frozen_string_literal: true

# Taiga
technology_taiga = Technology.where(slug: 'taiga').first_or_initialize
icon_taiga_svg = File.read('./db/seeds/technology/svg/taiga.svg')
technology_taiga.assign_attributes(
  github_repo: 'kaleidos-ventures',
  icon: icon_taiga_svg,
  name: 'Taiga',
  title: 'Taiga',
  website_url: 'https://www.taiga.io/'
)
technology_taiga.save
technology_taiga.project_management_software!
