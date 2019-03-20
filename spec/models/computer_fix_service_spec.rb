require 'rails_helper'

RSpec.describe ComputerFixService, type: :model do
  let(:name) { 'Lorem ipsum' }
  let(:price) { 100.0 }
  subject { create(:computer_fix_service, name: name, price: price) }

  describe '#name' do
    it 'returns computer fix service string' do
      expect(subject.name).to be_kind_of(String)
      expect(subject.name).to eq name
    end
  end

  describe '#price' do
    it 'returns float' do
      expect(subject.price).to be_kind_of(BigDecimal)
      expect(subject.price).to eq price
    end
  end
end
