# Haml
# http://haml.info/
technology_haml = Technology.where(slug: 'haml').first_or_initialize
icon_haml_wordmark_svg = File.read('./db/seeds/technology/svg/haml-logo.svg')
technology_haml.assign_attributes(
  name: 'haml',
  title: 'Haml',
  icon_wordmark: icon_haml_wordmark_svg
)
technology_haml.save
technology_haml.web!
