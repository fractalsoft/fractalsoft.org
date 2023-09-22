# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'
require_relative '../../db/migrate/20230922100000_add_columns_with_urls_to_people'

RSpec.describe AddColumnsWithUrlsToPeople do
  let(:people) do
    Class.new(ApplicationRecord) do
      self.table_name = 'people'
    end
  end

  describe 'GitHub' do
    context 'when the github is blank' do
      it 'returns the github url as nil' do
        person = people.create(github: nil)

        expect(person.reload.github_url).to be_nil
      end
    end

    context 'when the github is present' do
      it 'returns the github url as correct link to the user profile on GitHub' do
        person = people.create(github: 'torrocus')

        expect(person.reload.github_url).to eq('https://github.com/torrocus')
      end
    end
  end

  describe 'Instagram' do
    context 'when the instagram is blank' do
      it 'returns the instagram url as nil' do
        person = people.create(instagram: nil)

        expect(person.reload.instagram_url).to be_nil
      end
    end

    context 'when the instagram is present' do
      it 'returns the instagram url as correct link to the user profile on Instagram' do
        person = people.create(instagram: 'torrocus')

        expect(person.reload.instagram_url).to eq('https://instagram.com/torrocus')
      end
    end
  end

  describe 'LinkedIn' do
    context 'when the linkedin is blank' do
      it 'returns the linkedin url as nil' do
        person = people.create(linkedin: nil)

        expect(person.reload.linkedin_url).to be_nil
      end
    end

    context 'when the linkedin is present' do
      it 'returns the linkedin url as correct link to the user profile on LinkedIn' do
        person = people.create(linkedin: 'torrocus')

        expect(person.reload.linkedin_url).to eq('https://linkedin.com/in/torrocus')
      end
    end
  end

  describe 'Twitter' do
    context 'when the twitter is blank' do
      it 'returns the twitter url as nil' do
        person = people.create(twitter: nil)

        expect(person.reload.twitter_url).to be_nil
      end
    end

    context 'when the twitter is present' do
      it 'returns the twitter url as correct link to the user profile on Twitter' do
        person = people.create(twitter: 'torrocus')

        expect(person.reload.twitter_url).to eq('https://twitter.com/torrocus')
      end
    end
  end

  describe 'Vimeo' do
    context 'when the vimeo is blank' do
      it 'returns the vimeo url as nil' do
        person = people.create(vimeo: nil)

        expect(person.reload.vimeo_url).to be_nil
      end
    end

    context 'when the vimeo is present' do
      it 'returns the vimeo url as correct link to the user profile on Vimeo' do
        person = people.create(vimeo: 'womanonrails')

        expect(person.reload.vimeo_url).to eq('https://vimeo.com/womanonrails')
      end
    end
  end

  describe 'YouTube' do
    context 'when the youtube is blank' do
      it 'returns the youtube url as nil' do
        person = people.create(youtube: nil)

        expect(person.reload.youtube_url).to be_nil
      end
    end

    context 'when the youtube is present' do
      it 'returns the youtube url as correct link to the user profile on YouTube' do
        person = people.create(youtube: 'womanonrails')

        expect(person.reload.youtube_url).to eq('https://youtube.com/@womanonrails')
      end
    end
  end
end
