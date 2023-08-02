require 'rails_helper'

RSpec.describe ContactForm do
  let(:params) do
    { name: rand_text, email: 'test@gmail.com', message: rand_text }
  end

  describe 'do not validate' do
    it 'if name is empty sting' do
      contact_form = described_class.new(params.merge(name: ''))
      expect(contact_form).not_to be_valid
    end

    it 'if email has wrong format' do
      contact_form = described_class.new(params.merge(email: 'lorem'))
      expect(contact_form).not_to be_valid
    end

    it 'if message is empty string' do
      contact_form = described_class.new(params.merge(message: ''))
      expect(contact_form).not_to be_valid
    end
  end

  it 'is valid for correct data' do
    contact = described_class.new(params)
    expect(contact).to be_valid
  end
end
