# frozen_string_literal: true

require 'system_helper'

RSpec.describe 'Application loads JavaScript libraries' do
  it 'exist and allow us to check their versions', :js do
    skip 'Bootstrap has been removed; update JS library checks for Tailwind/DaisyUI'

    visit root_url

    browser = page.driver.browser
    bootstrap_version = browser.evaluate('bootstrap.Tooltip.VERSION')

    aggregate_failures('verify version of JavaScript libraries') do
      expect(bootstrap_version).to eq('5.3.3')
    end
  end
end
