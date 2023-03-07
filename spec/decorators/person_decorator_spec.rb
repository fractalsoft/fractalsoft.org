require 'rails_helper'

RSpec.describe PersonDecorator, type: :decorator do
  let(:person) { create(:person, params) }
  let(:decorator) { described_class.decorate(person) }

  describe '#facebook' do
    let(:facebook) { 'fractalsoft' }
    let(:params) { { facebook: } }

    it 'shows facebook' do
      expect(decorator.facebook).to include facebook, 'href', 'svg'
    end
  end

  describe '#github' do
    let(:github) { 'fractalsoft' }
    let(:params) { { github: } }

    it 'shows github' do
      expect(decorator.github).to include github, 'href', 'svg'
    end
  end

  describe '#twitter' do
    let(:twitter) { 'fractal_soft' }
    let(:params) { { twitter: } }

    it 'shows twitter' do
      expect(decorator.twitter).to include twitter, 'href', 'svg'
    end
  end

  describe '#website' do
    let(:website) { 'https://fractalsoft.org' }
    let(:params) { { website: } }

    it 'shows website' do
      expect(decorator.website).to include website, 'href', 'svg'
    end
  end

  context 'without params' do
    let(:params) { {} }

    it 'do not show facebook' do
      expect(decorator.facebook).to be_nil
    end

    it 'do not show github' do
      expect(decorator.github).to be_nil
    end

    it 'do not show twitter' do
      expect(decorator.twitter).to be_nil
    end

    it 'do not show website' do
      expect(decorator.website).to be_nil
    end
  end
end
