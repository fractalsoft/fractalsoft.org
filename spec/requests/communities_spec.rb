# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Communities' do
  describe 'GET /communities' do
    it 'works! (now write some real specs)' do
      get communities_path
      expect(response).to have_http_status(:ok)
    end
  end
end
