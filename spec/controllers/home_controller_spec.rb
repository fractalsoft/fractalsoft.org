require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET index' do
    it 'render home template' do
      get :index, locale: :en
      expect(response).to render_template(:index)
    end

    it 'has HomeFacade object' do
      get :index, locale: :en
      expect(assigns(:home)).to be_an(HomeFacade)
    end
  end
end
