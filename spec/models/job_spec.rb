require 'rails_helper'

RSpec.describe Job, type: :model do
  let(:name) { 'Lorem ipsum' }
  let(:price) { 100.0 }
  subject { create(:job, name: name, price: price) }

  describe '#name' do
    it 'returns job string' do
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
