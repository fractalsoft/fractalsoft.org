# frozen_string_literal: true

# Markdown
technology_markdown = Technology.where(slug: 'markdown').first_or_initialize
icon_markdown_svg = File.read('./db/seeds/technology/svg/markdown-original.svg')
technology_markdown.assign_attributes(
  icon: icon_markdown_svg,
  name: 'Markdown',
  title: 'Markdown'
)
technology_markdown.save
technology_markdown.web!
