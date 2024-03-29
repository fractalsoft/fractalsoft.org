# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ComputerFixService do
  subject(:price_list) { create(:computer_fix_service, name:, price:) }

  let(:name) { 'Lorem ipsum' }
  let(:price) { 100.0 }

  describe '#name' do
    it 'checks a String type' do
      expect(price_list.name).to be_a(String)
    end

    it 'returns computer fix service string' do
      expect(price_list.name).to eq name
    end
  end

  describe '#price' do
    it 'checks a BigDecimal type' do
      expect(price_list.price).to be_a(BigDecimal)
    end

    it 'returns float' do
      expect(price_list.price).to eq price
    end
  end
end
