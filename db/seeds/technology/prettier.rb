# Prettier
technology_prettier = Technology.where(slug: 'prettier').first_or_initialize
icon_prettier_svg = File.read('./db/seeds/technology/svg/prettier.svg')
technology_prettier.assign_attributes(
  github_repo: 'prettier/prettier',
  name: 'Prettier',
  title: 'Prettier',
  icon: icon_prettier_svg,
  website_url: 'https://prettier.io/'
)
technology_prettier.save
technology_prettier.linter!
