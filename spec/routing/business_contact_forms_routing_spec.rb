require 'rails_helper'

RSpec.describe BusinessContactFormsController do
  describe 'routing' do
    context 'when using English' do
      it 'returns route to #new' do
        expect(get('/business-contact-form/new')).to route_to(
          controller: 'business_contact_forms',
          action: 'new',
          locale: 'en'
        )
      end

      it 'returns route to #create' do
        expect(post('/business-contact-form')).to route_to(
          controller: 'business_contact_forms',
          action: 'create',
          locale: 'en'
        )
      end

      it 'returns route to #show' do
        expect(get('/business-contact-form')).to route_to(
          controller: 'business_contact_forms',
          action: 'show',
          locale: 'en'
        )
      end
    end

    context 'when using Polish' do
      it 'returns route to #new' do
        expect(get('/pl/biznesowy-formularz-kontaktowy/new')).to route_to(
          controller: 'business_contact_forms',
          action: 'new',
          locale: 'pl'
        )
      end

      it 'returns route to #create' do
        expect(post('/pl/biznesowy-formularz-kontaktowy')).to route_to(
          controller: 'business_contact_forms',
          action: 'create',
          locale: 'pl'
        )
      end

      it 'returns route to #show' do
        expect(get('/pl/biznesowy-formularz-kontaktowy')).to route_to(
          controller: 'business_contact_forms',
          action: 'show',
          locale: 'pl'
        )
      end
    end
  end
end
