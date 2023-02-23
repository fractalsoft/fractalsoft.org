require 'rails_helper'

RSpec.describe ContactFormsController, type: :controller do
  describe 'POST #create' do
    let(:locale) { 'en' }
    let(:params) do
      { name: rand_text, email: 'test@example.com', message: rand_text }
    end

    before do
      allow_any_instance_of(ContactForm).to receive(:deliver).and_return(nil)
    end

    it 'has ContactForm object' do
      post :create, params: { contact_form: params, locale: }
      expect(assigns(:contact_form)).to be_a(ContactForm)
    end

    it 'send mail to application owner' do
      expect_any_instance_of(ContactForm).to receive(:deliver)
      post :create, params: { contact_form: params, locale: }
    end

    it 'redirect back to main page' do
      post :create, params: { contact_form: params, locale: }
      expect(response).to redirect_to(root_en_path)
    end
  end
end
