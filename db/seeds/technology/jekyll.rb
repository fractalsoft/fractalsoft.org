# Jekyll
# https://jekyllrb.com/
technology_jekyll = Technology.where(slug: 'jekyll').first_or_initialize
icon_jekyll_wordmark_svg = File.read('./db/seeds/technology/svg/jekyll-wordmark.svg')
technology_jekyll.assign_attributes(
  name: 'jekyll',
  title: 'Jekyll',
  icon_wordmark: icon_jekyll_wordmark_svg
)
technology_jekyll.save
technology_jekyll.backend!
