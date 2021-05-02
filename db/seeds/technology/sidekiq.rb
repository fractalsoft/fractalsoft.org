# Sidekiq
# https://sidekiq.org/
technology_sidekiq = Technology.where(slug: 'sidekiq').first_or_initialize
icon_sidekiq_original_svg = File.read('./db/seeds/technology/svg/sidekiq.svg')
technology_sidekiq.assign_attributes(
  name: 'sidekiq',
  title: 'Sidekiq',
  icon: icon_sidekiq_original_svg
)
technology_sidekiq.save
technology_sidekiq.tool!
