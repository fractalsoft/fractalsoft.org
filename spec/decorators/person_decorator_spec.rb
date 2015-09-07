require 'rails_helper'

RSpec.describe PersonDecorator, type: :decorator do
  let(:person) { create(:person, params) }
  let(:decorator) { described_class.decorate(person) }

  describe '#email' do
    let(:email) { 'do-not-spam@fractalsoft.org' }
    let(:css_class) { 'icons-email' }
    let(:params) { { email: email } }

    it 'shows email' do
      expect(decorator.email).to include email, css_class
    end
  end

  describe '#facebook' do
    let(:facebook) { 'fractalsoft' }
    let(:css_class) { 'icons-facebook' }
    let(:params) { { facebook: facebook } }

    it 'shows facebook' do
      expect(decorator.facebook).to include facebook, css_class
    end
  end

  describe '#github' do
    let(:github) { 'fractalsoft' }
    let(:css_class) { 'icons-github' }
    let(:params) { { github: github } }

    it 'shows github' do
      expect(decorator.github).to include github, css_class
    end
  end

  describe '#twitter' do
    let(:twitter) { 'fractal_soft' }
    let(:css_class) { 'icons-twitter' }
    let(:params) { { twitter: twitter } }

    it 'shows twitter' do
      expect(decorator.twitter).to include twitter, css_class
    end
  end

  describe '#website' do
    let(:website) { 'http://fractalsoft.org' }
    let(:params) { { website: website } }

    it 'shows website' do
      expect(decorator.website).to include website, 'href'
    end
  end

  context 'no params' do
    let(:params) { {} }

    it 'do not show any field' do
      expect(decorator.email).to be_nil
      expect(decorator.facebook).to be_nil
      expect(decorator.github).to be_nil
      expect(decorator.twitter).to be_nil
      expect(decorator.website).to be_nil
    end
  end
end
