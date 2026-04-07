# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InnovationHubsController do
  describe 'routing' do
    context 'when using English' do
      it 'routes index' do
        expect(get('/innovation-hub')).to route_to(
          controller: 'innovation_hubs',
          action: 'index',
          locale: 'en'
        )
      end

      it 'routes show' do
        expect(get('/innovation-hub/sample-slug')).to route_to(
          controller: 'innovation_hubs',
          action: 'show',
          id: 'sample-slug',
          locale: 'en'
        )
      end
    end

    context 'when using Polish' do
      it 'routes index' do
        expect(get('/pl/innovation-hub')).to route_to(
          controller: 'innovation_hubs',
          action: 'index',
          locale: 'pl'
        )
      end

      it 'routes show' do
        expect(get('/pl/innovation-hub/przyklad')).to route_to(
          controller: 'innovation_hubs',
          action: 'show',
          id: 'przyklad',
          locale: 'pl'
        )
      end
    end
  end
end
