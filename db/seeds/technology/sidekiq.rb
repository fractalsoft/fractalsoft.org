# Sidekiq
technology_sidekiq = Technology.where(slug: 'sidekiq').first_or_initialize
icon_sidekiq_original_svg = File.read('./db/seeds/technology/svg/sidekiq.svg')
technology_sidekiq.assign_attributes(
  github_repo: 'sidekiq/sidekiq',
  icon: icon_sidekiq_original_svg,
  name: 'sidekiq',
  title: 'Sidekiq',
  website_url: 'https://sidekiq.org/'
)
technology_sidekiq.save
technology_sidekiq.tool!
