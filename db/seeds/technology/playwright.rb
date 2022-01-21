# Playwright
# https://playwright.dev/
technology_playwright = Technology.where(slug: 'playwright').first_or_initialize
icon_playwright_original_svg = File.read('./db/seeds/technology/svg/playwright.svg')
technology_playwright.assign_attributes(
  name: 'playwright',
  title: 'Playwright',
  icon: icon_playwright_original_svg
)
technology_playwright.save
technology_playwright.testing!
