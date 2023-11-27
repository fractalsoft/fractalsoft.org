require 'rails_helper'

RSpec.describe BusinessContactForm do
  describe 'validation' do
    it 'is not valid if the first name is missing' do
      params = {
        first_name: '',
        email: 'john_doe@example.com'
      }
      business_contact_form = described_class.new(params)

      expect(business_contact_form).not_to be_valid
    end

    it 'is not valid if the email address is missing' do
      params = {
        first_name: 'John',
        email: ''
      }
      business_contact_form = described_class.new(params)

      expect(business_contact_form).not_to be_valid
    end

    it 'is valid with required first name and email address' do
      params = {
        first_name: 'John',
        email: 'john_doe@example.com'
      }
      business_contact_form = described_class.new(params)

      expect(business_contact_form).to be_valid
    end
  end
end
