# Bootstrap
# https://getbootstrap.com/
technology_bootstrap = Technology.where(slug: 'bootstrap').first_or_initialize
icon_bootstrap_original_svg = File.read('./db/seeds/technology/svg/bootstrap-original.svg')
icon_bootstrap_wordmark_svg = File.read('./db/seeds/technology/svg/bootstrap-original-wordmark.svg')
technology_bootstrap.assign_attributes(
  name: 'Bootstrap',
  title: 'Bootstrap',
  icon: icon_bootstrap_original_svg,
  icon_wordmark: icon_bootstrap_wordmark_svg
)
technology_bootstrap.save
technology_bootstrap.web!
