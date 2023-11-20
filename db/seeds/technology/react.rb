# React
technology_react = Technology.where(slug: 'react').first_or_initialize
icon_react_original_svg = File.read('./db/seeds/technology/svg/react-original.svg')
icon_react_wordmark_svg = File.read('./db/seeds/technology/svg/react-original-wordmark.svg')
technology_react.assign_attributes(
  emoji: '⚛️🚀',
  github_repo: 'facebook/react',
  icon: icon_react_original_svg,
  icon_wordmark: icon_react_wordmark_svg,
  name: 'react',
  title: 'React',
  website_url: 'https://react.dev/'
)
technology_react.save
technology_react.frontend!
