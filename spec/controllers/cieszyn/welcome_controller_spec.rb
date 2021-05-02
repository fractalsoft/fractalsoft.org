require 'rails_helper'

RSpec.describe Cieszyn::WelcomeController, type: :controller do
  render_views
  describe 'GET #show' do
    it 'returns http success' do
      create(:office_address, slug: 'cieszyn')
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
