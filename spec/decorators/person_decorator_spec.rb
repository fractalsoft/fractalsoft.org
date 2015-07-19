require 'rails_helper'

RSpec.describe PersonDecorator, type: :decorator do
  describe '#email' do
    let(:email) { 'fractalsoft@example.com' }

    it 'shows email if exist' do
      person = Person.create(email: email)
      decorator = PersonDecorator.decorate(person).email
      expect(decorator).to include email, 'icons/email.png'
    end

    it 'shows nothing when email not exist' do
      person = Person.create
      expect(PersonDecorator.decorate(person).email).to be_nil
    end
  end

  describe '#facebook' do
    let(:facebook) { 'https://www.facebook.com/fractalsoft' }

    it 'shows facebook if exist' do
      person = Person.create(facebook: facebook)
      decorator = PersonDecorator.decorate(person).facebook
      expect(decorator).to include facebook, 'icons/facebook.png'
    end

    it 'shows nothing when facebook not exist' do
      person = Person.create
      expect(PersonDecorator.decorate(person).facebook).to be_nil
    end
  end

  describe '#github' do
    let(:github) { 'https://www.github.com/fractalsoft' }

    it 'shows github if exist' do
      person = Person.create(github: github)
      decorator = PersonDecorator.decorate(person).github
      expect(decorator).to include github, 'icons/github.png'
    end

    it 'shows nothing when github not exist' do
      person = Person.create
      expect(PersonDecorator.decorate(person).github).to be_nil
    end
  end

  describe '#twitter' do
    let(:twitter) { 'https://twitter.com/fractal_soft' }

    it 'shows twitter if exist' do
      person = Person.create(twitter: twitter)
      decorator = PersonDecorator.decorate(person).twitter
      expect(decorator).to include twitter, 'icons/twitter.png'
    end

    it 'shows nothing when twitter not exist' do
      person = Person.create
      expect(PersonDecorator.decorate(person).twitter).to be_nil
    end
  end

  describe '#website' do
    let(:website) { 'http://google.com' }

    it 'shows website if exist' do
      person = Person.create(website: website)
      decorator = PersonDecorator.decorate(person).website
      expect(decorator).to include website, 'href'
    end

    it 'shows nothing when website not exist' do
      person = Person.create
      expect(PersonDecorator.decorate(person).website).to be_nil
    end
  end
end
