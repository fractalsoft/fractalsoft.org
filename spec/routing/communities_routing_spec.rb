require 'rails_helper'

RSpec.describe CommunitiesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/community').to route_to('communities#index', locale: 'en')
    end

    it 'routes to #show' do
      expect(get: '/community/1').to route_to('communities#show', id: '1', locale: 'en')
    end
  end
end
