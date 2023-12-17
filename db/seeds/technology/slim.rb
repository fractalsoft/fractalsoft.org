# frozen_string_literal: true

# Slim
technology_slim = Technology.where(slug: 'slim').first_or_initialize
icon_slim_svg = File.read('./db/seeds/technology/svg/slim.svg')
technology_slim.assign_attributes(
  github_repo: 'slim-template/slim',
  icon: icon_slim_svg,
  name: 'Slim',
  title: 'Slim Template Language',
  website_url: 'https://slim-template.github.io/'
)
technology_slim.save
technology_slim.web!
