require 'rails_helper'

RSpec.describe Image, type: :model do
  describe '.logo' do
    it 'show first image logo kind' do
      image = described_class.create(kind: 'logo')
      described_class.create(kind: 'other')

      expect(described_class.logo).to eq(image)
    end
  end

  describe '.pages' do
    it 'show all images page kind' do
      image = described_class.create(kind: 'page')
      described_class.create(kind: 'other')

      expect(described_class.pages).to eq([image])
    end
  end

  describe '.pc' do
    it 'show first image pc kind' do
      image = described_class.create(kind: 'pc')
      described_class.create(kind: 'other')

      expect(described_class.pc).to eq(image)
    end
  end

  describe '.top' do
    it 'show first image top kind' do
      image = described_class.create(kind: 'top')
      described_class.create(kind: 'other')

      expect(described_class.top).to eq(image)
    end
  end
end
