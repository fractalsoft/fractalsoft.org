# frozen_string_literal: true

# TypeScript
technology_typescript = Technology.where(slug: 'typescript').first_or_initialize
icon_typescript_original_svg = File.read('./db/seeds/technology/svg/typescript-original.svg')
technology_typescript.assign_attributes(
  github_repo: 'microsoft/TypeScript',
  icon: icon_typescript_original_svg,
  name: 'typescript',
  title: 'TypeScript',
  website_url: 'https://www.typescriptlang.org/'
)
technology_typescript.save
technology_typescript.frontend!
