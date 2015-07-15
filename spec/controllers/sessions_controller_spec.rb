require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'GET update' do
    it 'returns http success' do
      request.env['HTTP_REFERER'] = root_path
      post :update
      expect(response).to redirect_to root_path
    end
  end
end
