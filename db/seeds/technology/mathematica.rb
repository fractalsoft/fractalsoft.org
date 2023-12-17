# frozen_string_literal: true

# Mathematica
technology_mathematica = Technology.where(slug: 'mathematica').first_or_initialize
icon_mathematica_svg = File.read('./db/seeds/technology/svg/mathematica.svg')
technology_mathematica.assign_attributes(
  emoji: '🧮📊💻',
  icon: icon_mathematica_svg,
  name: 'mathematica',
  title: 'Mathematica',
  website_url: 'https://www.wolfram.com/mathematica/'
)
technology_mathematica.save
technology_mathematica.mathematical_software!
