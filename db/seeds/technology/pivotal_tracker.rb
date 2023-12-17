# frozen_string_literal: true

# Pivotal Tracker
technology_pivotal_tracker = Technology.where(slug: 'pivotal-tracker').first_or_initialize
icon_pivotal_tracker_svg = File.read('./db/seeds/technology/svg/pivotal-tracker.svg')
technology_pivotal_tracker.assign_attributes(
  emoji: '📊🚀🔍',
  icon: icon_pivotal_tracker_svg,
  name: 'Pivotal Tracker',
  title: 'Pivotal Tracker',
  website_url: 'https://www.pivotaltracker.com/'
)
technology_pivotal_tracker.save
technology_pivotal_tracker.project_management_software!
