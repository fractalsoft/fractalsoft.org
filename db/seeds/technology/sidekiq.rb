# Sidekiq
# https://sidekiq.org/
technology_sidekiq = Technology.where(slug: 'sidekiq').first_or_initialize
technology_sidekiq.assign_attributes(
  name: 'sidekiq',
  title: 'Sidekiq'
)
technology_sidekiq.save
technology_sidekiq.tool!
