require 'rails_helper'

RSpec.describe Cieszyn::PricesController, type: :controller do
  render_views
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'assigns computer fix services' do
      get :index
      expect(assigns(:computer_fix_services)).to be_kind_of(ActiveRecord::Relation)
    end
  end
end
