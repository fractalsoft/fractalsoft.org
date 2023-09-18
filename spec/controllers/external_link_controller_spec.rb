require 'rails_helper'

RSpec.describe ExternalLinkController do
  describe 'GET #show' do
    it 'returns redirect status' do
      person = create(:person, blog_url: 'https://womanonrails.com')
      get :show, params: { person_id: person.id, link_name: 'blog', locale: 'en' }

      expect(response).to have_http_status(:found)
    end

    it 'redirect to blog' do
      person = create(:person, blog_url: 'https://womanonrails.com')
      get :show, params: { person_id: person.id, link_name: 'blog', locale: 'en' }

      expect(response).to redirect_to 'https://womanonrails.com'
    end

    it 'redirect to facebook' do
      person = create(:person, facebook: 'womanonrails')
      get :show, params: { person_id: person.id, link_name: 'facebook', locale: 'en' }

      expect(response).to redirect_to 'https://facebook.com/womanonrails'
    end

    it 'redirect to github' do
      person = create(:person, github: 'womanonrails')
      get :show, params: { person_id: person.id, link_name: 'github', locale: 'en' }

      expect(response).to redirect_to 'https://github.com/womanonrails'
    end

    it 'redirect to instagram' do
      person = create(:person, instagram: 'womanonrails')
      get :show, params: { person_id: person.id, link_name: 'instagram', locale: 'en' }

      expect(response).to redirect_to 'https://instagram.com/womanonrails'
    end

    it 'redirect to linkedin' do
      person = create(:person, linkedin: 'womanonrails')
      get :show, params: { person_id: person.id, link_name: 'linkedin', locale: 'en' }

      expect(response).to redirect_to 'https://linkedin.com/in/womanonrails'
    end

    it 'redirect to twitter' do
      person = create(:person, twitter: 'womanonrails')
      get :show, params: { person_id: person.id, link_name: 'twitter', locale: 'en' }

      expect(response).to redirect_to 'https://twitter.com/womanonrails'
    end

    it 'redirect to vimeo' do
      person = create(:person, vimeo: 'womanonrails')
      get :show, params: { person_id: person.id, link_name: 'vimeo', locale: 'en' }

      expect(response).to redirect_to 'https://vimeo.com/womanonrails'
    end

    it 'redirect to website' do
      person = create(:person, website_url: 'https://torrocus.com')
      get :show, params: { person_id: person.id, link_name: 'website', locale: 'en' }

      expect(response).to redirect_to 'https://torrocus.com'
    end

    it 'redirect to youtube' do
      person = create(:person, youtube: 'womanonrails')
      get :show, params: { person_id: person.id, link_name: 'youtube', locale: 'en' }

      expect(response).to redirect_to 'https://youtube.com/@womanonrails'
    end
  end
end
