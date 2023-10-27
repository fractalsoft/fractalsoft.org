# Stylelint
technology_stylelint = Technology.where(slug: 'stylelint').first_or_initialize
icon_stylelint_svg = File.read('./db/seeds/technology/svg/stylelint.svg')
technology_stylelint.assign_attributes(
  github_repo: 'stylelint/stylelint',
  icon: icon_stylelint_svg,
  name: 'Stylelint',
  title: 'Stylelint',
  website_url: 'https://stylelint.io/'
)
technology_stylelint.save
technology_stylelint.linter!
