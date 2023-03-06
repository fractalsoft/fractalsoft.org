require 'rails_helper'

RSpec.describe Cieszyn::WarrantyController do
  render_views
  describe 'GET #show' do
    it 'returns http success' do
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
