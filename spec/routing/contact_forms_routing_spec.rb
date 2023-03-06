require 'rails_helper'

RSpec.describe ContactFormsController do
  describe 'routing' do
    context 'when locale is en' do
      let(:contact_form_path) { '/contact-form' }
      let(:locale) { 'en' }

      it 'returns route to #create' do
        expect(post(contact_form_path)).to route_to(
          controller: 'contact_forms',
          action: 'create',
          locale:
        )
      end
    end

    context 'when locale is pl' do
      let(:contact_form_path) { '/pl/formularz-kontaktowy' }
      let(:locale) { 'pl' }

      it 'routes to #create with locale pl' do
        expect(post(contact_form_path)).to route_to(
          controller: 'contact_forms',
          action: 'create',
          locale:
        )
      end
    end
  end
end
