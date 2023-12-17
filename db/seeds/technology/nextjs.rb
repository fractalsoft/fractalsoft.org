# frozen_string_literal: true

# Next.js
technology_nextjs = Technology.where(slug: 'next-js').first_or_initialize
icon_nextjs_original_svg = File.read('./db/seeds/technology/svg/nextjs-original.svg')
icon_nextjs_wordmark_svg = File.read('./db/seeds/technology/svg/nextjs-original-wordmark.svg')
technology_nextjs.assign_attributes(
  github_repo: 'vercel/next.js',
  icon: icon_nextjs_original_svg,
  icon_wordmark: icon_nextjs_wordmark_svg,
  name: 'next.js',
  title: 'Next.js',
  website_url: 'https://nextjs.org/'
)
technology_nextjs.save
technology_nextjs.frontend!
