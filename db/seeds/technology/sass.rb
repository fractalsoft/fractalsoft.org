# Sass
technology_sass = Technology.where(slug: 'sass').first_or_initialize
icon_sass_original_svg = File.read('./db/seeds/technology/svg/sass-original.svg')
technology_sass.assign_attributes(
  github_repo: 'sass/dart-sass',
  icon: icon_sass_original_svg,
  name: 'sass',
  title: 'Sass',
  website_url: 'https://sass-lang.com/'
)
technology_sass.save
technology_sass.web!
