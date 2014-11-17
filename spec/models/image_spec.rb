require 'rails_helper'

RSpec.describe Image, type: :model do
  describe '.logo' do
    it 'show first image logo kind' do
      image = Image.create(kind: 'logo')
      Image.create(kind: 'other')

      expect(Image.logo).to eq(image)
    end
  end

  describe '.pages' do
    it 'show all images page kind' do
      image = Image.create(kind: 'page')
      Image.create(kind: 'other')

      expect(Image.pages).to eq([image])
    end
  end

  describe '.pc' do
    it 'show first image pc kind' do
      image = Image.create(kind: 'pc')
      Image.create(kind: 'other')

      expect(Image.pc).to eq(image)
    end
  end

  describe '.top' do
    it 'show first image top kind' do
      image = Image.create(kind: 'top')
      Image.create(kind: 'other')

      expect(Image.top).to eq(image)
    end
  end
end
