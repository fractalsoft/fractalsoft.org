# Stylelint
# https://stylelint.io/
technology_stylelint = Technology.where(slug: 'stylelint').first_or_initialize
icon_stylelint_svg = File.read('./db/seeds/technology/svg/stylelint.svg')
technology_stylelint.assign_attributes(
  name: 'Stylelint',
  title: 'Stylelint',
  icon: icon_stylelint_svg
)
technology_stylelint.save
technology_stylelint.linter!
