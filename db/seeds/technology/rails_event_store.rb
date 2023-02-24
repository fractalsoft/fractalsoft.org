# Rails Event Store
# https://railseventstore.org/
technology_rails_event_store = Technology.where(slug: 'rails-event-store').first_or_initialize
icon_rails_event_store_svg = File.read('./db/seeds/technology/svg/rails-event-store.svg')
technology_rails_event_store.assign_attributes(
  name: 'RES',
  title: 'Rails Event Store',
  icon: icon_rails_event_store_svg
)
technology_rails_event_store.save
technology_rails_event_store.backend!
