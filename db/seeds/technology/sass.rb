# Sass
# https://sass-lang.com/
technology_sass = Technology.where(slug: 'sass').first_or_initialize
icon_sass_original_svg = File.read('./db/seeds/technology/svg/sass-original.svg')
technology_sass.assign_attributes(
  name: 'sass',
  title: 'Sass',
  icon: icon_sass_original_svg
)
technology_sass.save
technology_sass.web!
