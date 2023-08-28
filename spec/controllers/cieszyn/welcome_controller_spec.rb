require 'rails_helper'

RSpec.describe Cieszyn::WelcomeController do
  render_views
  describe 'GET #show' do
    it 'returns http success' do
      create(:office_address, slug: 'cieszyn-serwis')
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
