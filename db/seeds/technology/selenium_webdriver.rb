# Selenium WebDriver
# https://www.selenium.dev/
technology_selenium_webdriver = Technology.where(slug: 'selenium-webdriver').first_or_initialize
icon_selenium_webdriver_svg = File.read('./db/seeds/technology/svg/selenium-webdriver.svg')
technology_selenium_webdriver.assign_attributes(
  name: 'Selenium WebDriver',
  title: 'Selenium WebDriver',
  icon: icon_selenium_webdriver_svg
)
technology_selenium_webdriver.save
technology_selenium_webdriver.testing!
