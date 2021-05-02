# TypeScript
# https://www.typescriptlang.org/
technology_typescript = Technology.where(slug: 'typescript').first_or_initialize
icon_typescript_original_svg = File.read('./db/seeds/technology/svg/typescript-original.svg')
technology_typescript.assign_attributes(
  name: 'typescript',
  title: 'TypeScript',
  icon: icon_typescript_original_svg
)
technology_typescript.save
technology_typescript.frontend!
