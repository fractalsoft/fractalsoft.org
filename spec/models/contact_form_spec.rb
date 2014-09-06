require 'rails_helper'

RSpec.describe ContactForm, type: :model do
  let(:params) do
    { name: rand_text, email: 'test@example.com', message: rand_text }
  end

  describe 'do not validate' do
    it 'if name is empty sting' do
      contact = ContactForm.new(params.merge(name: ''))
      expect(contact).to be_invalid
    end

    it 'if email has wrong format' do
      contact = ContactForm.new(params.merge(email: 'xyz'))
      expect(contact).to be_invalid
    end

    it 'if massage is empty string' do
      contact = ContactForm.new(params.merge(message: ''))
      expect(contact).to be_invalid
    end
  end

  it 'is valid for correct data' do
    contact = ContactForm.new(params)
    expect(contact).to be_valid
  end
end
