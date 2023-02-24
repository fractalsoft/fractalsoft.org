# Next.js
# https://nextjs.org/
technology_nextjs = Technology.where(slug: 'next-js').first_or_initialize
icon_nextjs_original_svg = File.read('./db/seeds/technology/svg/nextjs-original.svg')
icon_nextjs_wordmark_svg = File.read('./db/seeds/technology/svg/nextjs-original-wordmark.svg')
technology_nextjs.assign_attributes(
  name: 'next.js',
  title: 'Next.js',
  icon: icon_nextjs_original_svg,
  icon_wordmark: icon_nextjs_wordmark_svg
)
technology_nextjs.save
technology_nextjs.frontend!
