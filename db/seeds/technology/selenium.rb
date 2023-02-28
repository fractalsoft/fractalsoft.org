# Selenium
# https://www.selenium.dev/
technology_selenium = Technology.where(slug: 'selenium').first_or_initialize
icon_selenium_original_svg = File.read('./db/seeds/technology/svg/selenium-original.svg')
technology_selenium.assign_attributes(
  name: 'Selenium',
  title: 'Selenium WebDriver',
  icon: icon_selenium_original_svg
)
technology_selenium.save
technology_selenium.testing!
