# ESLint
technology_eslint = Technology.where(slug: 'eslint').first_or_initialize
icon_eslint_original_svg = File.read('./db/seeds/technology/svg/eslint-original.svg')
_icon_eslint_wordmark_svg = File.read('./db/seeds/technology/svg/eslint-original-wordmark.svg')
technology_eslint.assign_attributes(
  github_repo: 'eslint/eslint',
  icon: icon_eslint_original_svg,
  name: 'ESLint',
  title: 'ESLint',
  website_url: 'https://eslint.org/'
)
technology_eslint.save
technology_eslint.linter!
