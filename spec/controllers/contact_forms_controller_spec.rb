require 'rails_helper'

RSpec.describe ContactFormsController do
  describe 'POST #create' do
    context 'when English is used' do
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

      it 'stays in the contact section of the home page after sending an email from the home page' do
        allow_any_instance_of(ActionController::TestRequest).to receive(:referrer).and_return(root_path)
        post :create, params: { contact_form: params, locale: }

        expect(response).to redirect_to(root_path(locale:, anchor: 'contact'))
      end

      it 'stays on the contact page after sending an email from the contact page' do
        allow_any_instance_of(ActionController::TestRequest).to receive(:referrer).and_return(new_contact_form_path)
        post :create, params: { contact_form: params, locale: }

        expect(response).to redirect_to(new_contact_form_path(locale:, anchor: 'contact'))
      end

      it 'displays a success message when an email has been sent' do
        allow_any_instance_of(ContactForm).to receive(:deliver).and_return(true)
        post :create, params: { contact_form: params, locale: }

        expect(flash[:notice]).to eq(I18n.t('contact_forms.create.success'))
      end

      it 'displays a failed message when an email has failed to be sent' do
        allow_any_instance_of(ContactForm).to receive(:deliver).and_return(false)
        post :create, params: { contact_form: params, locale: }

        expect(flash[:alert]).to eq(I18n.t('contact_forms.create.fail'))
      end
    end

    context 'when Polish is used' do
      let(:locale) { 'pl' }
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

      it 'stays in the contact section of the home page after sending an email from the home page' do
        I18n.with_locale(:pl) do
          allow_any_instance_of(ActionController::TestRequest).to receive(:referrer).and_return(root_path(locale:))
          post :create, params: { contact_form: params, locale: }

          expect(response).to redirect_to(root_path(locale:, anchor: 'contact'))
        end
      end

      it 'stays on the contact page after sending an email from the contact page' do
        I18n.with_locale(:pl) do
          allow_any_instance_of(ActionController::TestRequest).to receive(:referrer).and_return(new_contact_form_path)
          post :create, params: { contact_form: params, locale: }

          expect(response).to redirect_to(new_contact_form_path(locale:, anchor: 'contact'))
        end
      end

      it 'displays a success message when an email has been sent' do
        I18n.with_locale(:pl) do
          allow_any_instance_of(ContactForm).to receive(:deliver).and_return(true)
          post :create, params: { contact_form: params, locale: }

          expect(flash[:notice]).to eq(I18n.t('contact_forms.create.success'))
        end
      end

      it 'displays a failed message when an email has failed to be sent' do
        I18n.with_locale(:pl) do
          allow_any_instance_of(ContactForm).to receive(:deliver).and_return(false)
          post :create, params: { contact_form: params, locale: }

          expect(flash[:alert]).to eq(I18n.t('contact_forms.create.fail'))
        end
      end
    end
  end
end
