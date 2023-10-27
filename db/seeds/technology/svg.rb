# SVG
technology_svg = Technology.where(slug: 'svg').first_or_initialize
icon_svg_svg = File.read('./db/seeds/technology/svg/svg.svg')
technology_svg.assign_attributes(
  icon: icon_svg_svg,
  name: 'SVG',
  title: 'Scalable Vector Graphics',
  website_url: 'https://www.w3.org/Graphics/SVG/'
)
technology_svg.save
technology_svg.web!
