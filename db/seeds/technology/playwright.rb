# Playwright
technology_playwright = Technology.where(slug: 'playwright').first_or_initialize
icon_playwright_original_svg = File.read('./db/seeds/technology/svg/playwright.svg')
technology_playwright.assign_attributes(
  emoji: '🎭🎮',
  github_repo: 'microsoft/playwright',
  icon: icon_playwright_original_svg,
  name: 'playwright',
  title: 'Playwright',
  website_url: 'https://playwright.dev/'
)
technology_playwright.save
technology_playwright.testing!
