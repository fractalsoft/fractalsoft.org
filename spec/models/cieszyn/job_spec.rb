require 'rails_helper'

RSpec.describe Cieszyn::Job, type: :model do
  let(:job) { create(:job, name: 'lorem ipsum', price: 100) }

  describe '#name' do
    it 'returns job string' do
      expect(job.name).to be_kind_of(String)
      expect(job.name).to eq 'lorem ipsum'
    end
  end

  describe '#price' do
    it 'returns fixnum' do
      expect(job.price).to be_kind_of(Fixnum)
      expect(job.price).to eq 100
    end
  end
end
