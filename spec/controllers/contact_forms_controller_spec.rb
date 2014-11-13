require 'rails_helper'

RSpec.describe ContactFormsController, type: :controller do
  describe 'GET #new' do
    it 'has ContactForm object' do
      get :new
      expect(assigns(:contact)).to be_a(ContactForm)
    end
  end

  describe 'POST #create' do
    let(:params) do
      { name: rand_text, email: 'test@example.com', message: rand_text }
    end

    it 'has ContactForm object' do
      post :create, contact_form: params
      expect(assigns(:contact)).to be_a(ContactForm)
    end

    it 'send mail to application owner' do
      expect_any_instance_of(ContactForm).to receive(:deliver)
      post :create, contact_form: params

    end

    it 'redirect back to main page' do
      post :create, contact_form: params
      expect(response).to redirect_to root_path
    end
  end
end
