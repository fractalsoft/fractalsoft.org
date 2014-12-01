require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  describe 'GET index' do
    it 'assigns all people as @people' do
      person = Person.create
      get :index
      expect(assigns(:people)).to eq([person])
    end
  end
end
