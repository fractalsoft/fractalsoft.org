# Heroku
# https://www.heroku.com/
technology_heroku = Technology.where(slug: 'heroku').first_or_initialize
icon_heroku_original_svg = File.read('./db/seeds/technology/svg/heroku-original.svg')
icon_heroku_wordmark_svg = File.read('./db/seeds/technology/svg/heroku-original-wordmark.svg')
technology_heroku.assign_attributes(
  name: 'heroku',
  title: 'Heroku',
  icon: icon_heroku_original_svg,
  icon_wordmark: icon_heroku_wordmark_svg
)
technology_heroku.save
technology_heroku.cloud_computing!
