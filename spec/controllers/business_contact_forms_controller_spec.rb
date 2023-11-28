require 'rails_helper'

RSpec.describe BusinessContactFormsController do
  describe 'GET #show' do
    it 'responds successfully' do
      get :show, params: { locale: 'en' }

      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'successfully renders a new business contact form' do
      get :new, params: { locale: 'en' }

      aggregate_failures do
        expect(response).to be_successful
        expect(response).to render_template('new')
        expect(assigns(:business_contact_form)).to be_a(BusinessContactForm)
      end
    end
  end

  describe 'POST #create' do
    it 'sends email' do
      params = {
        first_name: 'John',
        last_name: 'Doe',
        email: 'john_doe@example.com'
      }
      business_contact_form_double = instance_double(BusinessContactForm)
      allow(BusinessContactForm).to receive(:new).and_return(business_contact_form_double)
      allow(business_contact_form_double).to receive(:deliver)

      post :create, params: { business_contact_form: params, locale: 'en' }

      expect(business_contact_form_double).to have_received(:deliver)
    end

    context 'when English is used' do
      it 'redirects to the thank you page if the message is sent successfully' do
        I18n.with_locale(:en) do
          business_contact_form_double = instance_double(BusinessContactForm)
          allow(BusinessContactForm).to receive(:new).and_return(business_contact_form_double)
          allow(business_contact_form_double).to receive(:deliver).and_return(true)
          params = {
            first_name: 'John',
            last_name: 'Doe',
            email: 'john_doe@example.com'
          }

          post :create, params: { business_contact_form: params, locale: 'en' }

          expect(response).to redirect_to(business_contact_forms_path(locale: 'en'))
        end
      end

      it 'renders new business contact form if sending a message fails' do
        I18n.with_locale(:en) do
          business_contact_form_double = instance_double(BusinessContactForm)
          allow(BusinessContactForm).to receive(:new).and_return(business_contact_form_double)
          allow(business_contact_form_double).to receive(:deliver).and_return(false)
          params = {
            first_name: 'John',
            last_name: 'Doe',
            email: 'john_doe@example.com'
          }

          post :create, params: { business_contact_form: params, locale: 'en' }

          aggregate_failures do
            expect(response).to be_successful
            expect(response).to render_template('new')
          end
        end
      end
    end

    context 'when Polish is used' do
      it 'redirects to the thank you page if the message is sent successfully' do
        I18n.with_locale(:pl) do
          business_contact_form_double = instance_double(BusinessContactForm)
          allow(BusinessContactForm).to receive(:new).and_return(business_contact_form_double)
          allow(business_contact_form_double).to receive(:deliver).and_return(true)
          params = {
            first_name: 'John',
            last_name: 'Doe',
            email: 'john_doe@example.com'
          }

          post :create, params: { business_contact_form: params, locale: 'pl' }

          expect(response).to redirect_to(business_contact_forms_path(locale: 'pl'))
        end
      end

      it 'renders new business contact form if sending a message fails' do
        I18n.with_locale(:pl) do
          business_contact_form_double = instance_double(BusinessContactForm)
          allow(BusinessContactForm).to receive(:new).and_return(business_contact_form_double)
          allow(business_contact_form_double).to receive(:deliver).and_return(false)
          params = {
            first_name: 'John',
            last_name: 'Doe',
            email: 'john_doe@example.com'
          }

          post :create, params: { business_contact_form: params, locale: 'pl' }

          aggregate_failures do
            expect(response).to be_successful
            expect(response).to render_template('new')
          end
        end
      end
    end
  end
end
