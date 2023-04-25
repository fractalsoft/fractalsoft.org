require 'rails_helper'

RSpec.describe HomeController do
  render_views
  describe 'GET index' do
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
