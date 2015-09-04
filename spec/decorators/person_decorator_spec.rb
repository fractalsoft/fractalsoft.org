require 'rails_helper'

RSpec.describe PersonDecorator, type: :decorator do
  describe '#email' do
    let(:email) { 'do-not-spam@fractalsoft.org' }

    it 'shows email if exist' do
      person = create(:person, email: email)
      decorator = PersonDecorator.decorate(person).email
      expect(decorator).to include email, 'icons-email'
    end

    it 'shows nothing when email not exist' do
      person = create(:person)
      expect(PersonDecorator.decorate(person).email).to be_nil
    end
  end

  describe '#facebook' do
    let(:facebook) { 'fractalsoft' }

    it 'shows facebook if exist' do
      person = create(:person, facebook: facebook)
      decorator = PersonDecorator.decorate(person).facebook
      expect(decorator).to include facebook, 'icons-facebook'
    end

    it 'shows nothing when facebook not exist' do
      person = create(:person)
      expect(PersonDecorator.decorate(person).facebook).to be_nil
    end
  end

  describe '#github' do
    let(:github) { 'fractalsoft' }

    it 'shows github if exist' do
      person = create(:person, github: github)
      decorator = PersonDecorator.decorate(person).github
      expect(decorator).to include github, 'icons-github'
    end

    it 'shows nothing when github not exist' do
      person = create(:person)
      expect(PersonDecorator.decorate(person).github).to be_nil
    end
  end

  describe '#twitter' do
    let(:twitter) { 'fractal_soft' }

    it 'shows twitter if exist' do
      person = create(:person, twitter: twitter)
      decorator = PersonDecorator.decorate(person).twitter
      expect(decorator).to include twitter, 'icons-twitter'
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
