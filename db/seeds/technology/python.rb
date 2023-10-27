# Python
technology_python = Technology.where(slug: 'python').first_or_initialize
icon_python_original_svg = File.read('./db/seeds/technology/svg/python-original.svg')
icon_python_wordmark_svg = File.read('./db/seeds/technology/svg/python-original-wordmark.svg')
technology_python.assign_attributes(
  icon: icon_python_original_svg,
  icon_wordmark: icon_python_wordmark_svg,
  name: 'python',
  title: 'Python',
  website_url: 'https://www.python.org/'
)
technology_python.save
technology_python.backend!
