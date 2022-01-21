# Mathematica
# https://www.wolfram.com/mathematica/
technology_mathematica = Technology.where(slug: 'mathematica').first_or_initialize
icon_mathematica_svg = File.read('./db/seeds/technology/svg/mathematica.svg')
technology_mathematica.assign_attributes(
  name: 'mathematica',
  title: 'Mathematica',
  icon: icon_mathematica_svg
)
technology_mathematica.save
technology_mathematica.ms!
