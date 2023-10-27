# JavaScript
technology_javascript = Technology.where(slug: 'javascript').first_or_initialize
icon_javascript_original_svg = File.read('./db/seeds/technology/svg/javascript-original.svg')
technology_javascript.assign_attributes(
  icon: icon_javascript_original_svg,
  name: 'javascript',
  title: 'JavaScript'
)
technology_javascript.save
technology_javascript.frontend!
