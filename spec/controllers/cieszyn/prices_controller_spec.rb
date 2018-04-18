require 'rails_helper'

RSpec.describe Cieszyn::PricesController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'assigns jobs' do
      get :index
      expect(assigns(:jobs)).to be_kind_of(ActiveRecord::Relation)
    end
  end
end
