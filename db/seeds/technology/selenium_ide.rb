# Selenium IDE
technology_selenium_ide = Technology.where(slug: 'selenium-ide').first_or_initialize
icon_selenium_ide_svg = File.read('./db/seeds/technology/svg/selenium-ide.svg')
technology_selenium_ide.assign_attributes(
  github_repo: 'seleniumhq/selenium-ide',
  name: 'Selenium IDE',
  title: 'Selenium IDE',
  icon: icon_selenium_ide_svg,
  website_url: 'https://www.selenium.dev/'
)
technology_selenium_ide.save
technology_selenium_ide.testing!
