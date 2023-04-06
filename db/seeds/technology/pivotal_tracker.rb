# Pivotal Tracker
# https://www.pivotaltracker.com/
technology_pivotal_tracker = Technology.where(slug: 'pivotal-tracker').first_or_initialize
icon_pivotal_tracker_svg = File.read('./db/seeds/technology/svg/pivotal-tracker.svg')
technology_pivotal_tracker.assign_attributes(
  name: 'Pivotal Tracker',
  title: 'Pivotal Tracker',
  icon: icon_pivotal_tracker_svg
)
technology_pivotal_tracker.save
technology_pivotal_tracker.project_management_software!
