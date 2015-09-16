require 'rails_helper'

RSpec.describe HomeController, type: :routing do
  describe 'routing' do
    I18n.available_locales.each do |locale|
      it 'routes to #index' do
        path = "/#{locale}"
        expect(get(path)).to route_to('home#index', locale: locale.to_s)
      end
    end
  end
end
