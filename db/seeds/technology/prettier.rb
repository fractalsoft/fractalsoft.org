# Prettier
# https://prettier.io/
technology_prettier = Technology.where(slug: 'prettier').first_or_initialize
icon_prettier_svg = File.read('./db/seeds/technology/svg/prettier.svg')
technology_prettier.assign_attributes(
  name: 'Prettier',
  title: 'Prettier',
  icon: icon_prettier_svg
)
technology_prettier.save
technology_prettier.linter!
