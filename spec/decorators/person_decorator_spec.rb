require 'rails_helper'

RSpec.describe PersonDecorator, type: :decorator do
  describe '#email' do
    let(:email) { 'do-not-spam@fractalsoft.org' }
    let(:css_class) { 'icons-email' }
    let(:person) { create(:person, params) }
    let(:decorator) { PersonDecorator.decorate(person) }

    context 'exist' do
      let(:params) { { email: email } }

      it 'shows email' do
        expect(decorator.email).to include email, css_class
      end
    end

    context 'not exist' do
      let(:params) { {} }

      it 'shows nothing' do
        expect(decorator.email).to be_nil
      end
    end
  end

  describe '#facebook' do
    let(:facebook) { 'fractalsoft' }
    let(:css_class) { 'icons-facebook' }
    let(:params) { { facebook: facebook } }

    it 'shows facebook if exist' do
      person = create(:person, params)
      decorator = PersonDecorator.decorate(person)
      expect(decorator.facebook).to include facebook, css_class
    end

    it 'shows nothing when facebook not exist' do
      person = create(:person)
      decorator = PersonDecorator.decorate(person)
      expect(decorator.facebook).to be_nil
    end
  end

  describe '#github' do
    let(:github) { 'fractalsoft' }
    let(:css_class) { 'icons-github' }
    let(:params) { { github: github } }

    it 'shows github if exist' do
      person = create(:person, params)
      decorator = PersonDecorator.decorate(person).github
      expect(decorator).to include github, css_class
    end

    it 'shows nothing when github not exist' do
      person = create(:person)
      expect(PersonDecorator.decorate(person).github).to be_nil
    end
  end

  describe '#twitter' do
    let(:twitter) { 'fractal_soft' }
    let(:css_class) { 'icons-twitter' }
    let(:params) { { twitter: twitter } }

    it 'shows twitter if exist' do
      person = create(:person, params)
      decorator = PersonDecorator.decorate(person).twitter
      expect(decorator).to include twitter, css_class
    end

    it 'shows nothing when twitter not exist' do
      person = create(:person)
      expect(PersonDecorator.decorate(person).twitter).to be_nil
    end
  end

  describe '#website' do
    let(:website) { 'http://fractalsoft.org' }

    it 'shows website if exist' do
      person = create(:person, website: website)
      decorator = PersonDecorator.decorate(person).website
      expect(decorator).to include website, 'href'
    end

    it 'shows nothing when website not exist' do
      person = create(:person)
      expect(PersonDecorator.decorate(person).website).to be_nil
    end
  end
end
