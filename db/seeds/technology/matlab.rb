# MATLAB
# https://www.mathworks.com/products/matlab.html
technology_matlab = Technology.where(slug: 'matlab').first_or_initialize
icon_matlab_original_svg = File.read('./db/seeds/technology/svg/matlab-original.svg')
technology_matlab.assign_attributes(
  name: 'MATLAB',
  title: 'MATLAB',
  icon: icon_matlab_original_svg
)
technology_matlab.save
technology_matlab.mathematical_software!
