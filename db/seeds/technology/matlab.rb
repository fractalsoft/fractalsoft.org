# MATLAB
technology_matlab = Technology.where(slug: 'matlab').first_or_initialize
icon_matlab_original_svg = File.read('./db/seeds/technology/svg/matlab-original.svg')
technology_matlab.assign_attributes(
  icon: icon_matlab_original_svg,
  name: 'MATLAB',
  title: 'MATLAB',
  website_url: 'https://www.mathworks.com/products/matlab.html'
)
technology_matlab.save
technology_matlab.mathematical_software!
