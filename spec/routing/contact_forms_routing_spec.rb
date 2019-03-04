require 'rails_helper'

RSpec.describe ContactFormsController, type: :routing do
  describe 'routing' do
    it 'routes to #create with locale en' do
      path = '/contact-form'
      expect(post(path)).to route_to(
        controller: 'contact_forms',
        action: 'create',
        locale: 'en'
      )
    end

    it 'routes to #create with locale pl' do
      path = '/pl/formularz-kontaktowy'
      expect(post(path)).to route_to(
        controller: 'contact_forms',
        action: 'create',
        locale: 'pl'
      )
    end
  end
end
