require 'rails_helper'

describe ContactFormsController, type: :routing do
  I18n.available_locales.each do |locale|
    it 'POST #create' do
      expect(post("#{locale}/contact-forms")).to route_to(
        controller: 'contact_forms',
        action: 'create',
        locale: locale.to_s
      )
    end
  end
end
