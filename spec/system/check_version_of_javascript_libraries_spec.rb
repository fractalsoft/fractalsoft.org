require 'system_helper'

RSpec.describe 'Application loads JavaScript libraries' do
  it 'exist and allow us to check their versions', :js do
    visit root_url

    browser = page.driver.browser
    bootstrap_version = browser.evaluate('bootstrap.Tooltip.VERSION')
    jquery_version = browser.evaluate('jQuery().jquery')
    leaflet_version = browser.evaluate('L.version')

    aggregate_failures('verify version of JavaScript libraries') do
      expect(bootstrap_version).to eq('5.3.1')
      expect(jquery_version).to eq('3.7.1')
      expect(leaflet_version).to eq('1.9.4')
    end
  end
end
