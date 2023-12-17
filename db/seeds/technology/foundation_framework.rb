# frozen_string_literal: true

# Foundation Framework
technology_foundation = Technology.where(slug: 'foundation-css').first_or_initialize
icon_foundation_original_svg = File.read('./db/seeds/technology/svg/foundation-original.svg')
icon_foundation_wordmark_svg = File.read('./db/seeds/technology/svg/foundation-original-wordmark.svg')
technology_foundation.assign_attributes(
  github_repo: 'foundation/foundation-sites',
  icon: icon_foundation_original_svg,
  icon_wordmark: icon_foundation_wordmark_svg,
  name: 'Foundation',
  title: 'Foundation Framework',
  website_url: 'https://get.foundation/'
)
technology_foundation.save
technology_foundation.web!
