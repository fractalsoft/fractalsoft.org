# Taiga
# https://www.taiga.io/
technology_taiga = Technology.where(slug: 'taiga').first_or_initialize
icon_taiga_svg = File.read('./db/seeds/technology/svg/taiga.svg')
technology_taiga.assign_attributes(
  name: 'Taiga',
  title: 'Taiga',
  icon: icon_taiga_svg
)
technology_taiga.save
technology_taiga.project_management_software!
