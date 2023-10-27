# Trello
technology_trello = Technology.where(slug: 'trello').first_or_initialize
icon_trello_plain_svg = File.read('./db/seeds/technology/svg/trello-plain.svg')
icon_trello_wordmark_svg = File.read('./db/seeds/technology/svg/trello-plain-wordmark.svg')
technology_trello.assign_attributes(
  icon: icon_trello_plain_svg,
  icon_wordmark: icon_trello_wordmark_svg,
  name: 'Trello',
  title: 'Trello',
  website_url: 'https://trello.com/'
)
technology_trello.save
technology_trello.project_management_software!
