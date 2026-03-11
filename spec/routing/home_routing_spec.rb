# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController do
  describe 'routing' do
    # Only app-configured locales have localized routes (see config/application.rb).
    %i[en pl].each do |locale|
      it "routes to #index with locale #{locale}" do
        path = "/#{locale}".gsub(I18n.default_locale.to_s, '')
        expect(get(path)).to route_to('home#index', locale: locale.to_s)
      end
    end
  end
end
