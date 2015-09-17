require 'rails_helper'

RSpec.describe Cieszyn::RulesController, type: :controller do
  describe 'GET #show' do
    it 'returns http success' do
      get :show, locale: :pl
      expect(response).to have_http_status(:success)
    end
  end
end
