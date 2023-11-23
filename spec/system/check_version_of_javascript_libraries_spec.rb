require 'system_helper'

RSpec.describe 'Application loads JavaScript libraries' do
  it 'exist and allow us to check their versions', :js do
    visit root_url

    browser = page.driver.browser
    bootstrap_version = browser.evaluate('bootstrap.Tooltip.VERSION')

    aggregate_failures('verify version of JavaScript libraries') do
      expect(bootstrap_version).to eq('5.3.2')
    end
  end
end
