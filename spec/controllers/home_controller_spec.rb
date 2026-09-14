# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController do
  render_views
  describe 'GET index' do
    it 'serves the hero as a preloaded WebP image' do
      get :index, params: { locale: 'en' }

      aggregate_failures do
        expect(response.body).to match(%r{/assets/hero-[^"]+\.webp})
        expect(response.body).to include('fetchpriority="high"')
        expect(response.body).to include('rel="preload"')
      end
    end

    it 'defers the office map iframe until it is needed' do
      create(:office_address, position: 1)
      create(:office_address, position: 2)

      get :index, params: { locale: 'en' }

      aggregate_failures do
        expect(response.body).to include('js-lazy-iframe')
        expect(response.body).to include('data-src=')
        expect(response.body).not_to match(/iframe[^>]*\ssrc=["'][^"']*openstreetmap/)
      end
    end

    I18n.available_locales.each do |locale|
      context "when locale is #{locale}" do
        let(:params) { { locale: locale.to_s } }

        it 'render home template' do
          get(:index, params:)
          expect(response).to render_template(:index)
        end

        it 'has HomeFacade object' do
          get(:index, params:)
          expect(assigns(:home)).to be_an(HomeFacade)
        end
      end
    end
  end
end
