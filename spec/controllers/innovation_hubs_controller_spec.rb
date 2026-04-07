# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InnovationHubsController do
  describe 'GET #index' do
    it 'renders successfully with facade and newsletter form' do
      get :index, params: { locale: 'en' }

      aggregate_failures do
        expect(response).to be_successful
        expect(assigns(:hub)).to be_a(InnovationHubFacade)
        expect(assigns(:newsletter_form)).to be_a(ContactForm)
      end
    end
  end

  describe 'GET #show' do
    it 'renders a visible article' do
      article = InnovationHubArticle.create!(
        title: 'Sample',
        slug: 'sample-article',
        kind: 'research',
        display: true,
        featured: false,
        author_name: 'Fractal',
        read_time: '5 min',
        published_at: Time.zone.now
      )

      get :show, params: { locale: 'en', id: article.slug }

      aggregate_failures do
        expect(response).to be_successful
        expect(assigns(:article)).to eq(article)
      end
    end
  end
end
