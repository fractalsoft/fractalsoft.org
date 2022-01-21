# SVG
technology_svg = Technology.where(slug: 'svg').first_or_initialize
icon_svg_svg = File.read('./db/seeds/technology/svg/svg.svg')
technology_svg.assign_attributes(
  name: 'svg',
  title: 'SVG',
  icon: icon_svg_svg
)
technology_svg.save
technology_svg.web!
