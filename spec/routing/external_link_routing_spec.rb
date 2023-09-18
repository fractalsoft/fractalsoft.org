require 'rails_helper'

RSpec.describe ExternalLinkController do
  describe 'routing' do
    context 'with en locale and matching route constraints' do
      let(:id) { SecureRandom.uuid }

      it 'returns route to #show' do
        expect(get("/team/#{id}/blog")).to route_to(
          controller: 'external_link',
          action: 'show',
          person_id: id,
          link_name: 'blog',
          locale: 'en'
        )
      end
    end

    context 'with pl locale and matching route constraints' do
      let(:slug) { 'linus' }

      it 'returns route to #show' do
        expect(get("/pl/zespol/#{slug}/blog")).to route_to(
          controller: 'external_link',
          action: 'show',
          person_id: slug,
          link_name: 'blog',
          locale: 'pl'
        )
      end
    end
  end

  describe 'not routing' do
    context 'with en locale and mismatching route constraints' do
      let(:slug) { 'linus' }

      it 'does not return route to #show' do
        expect(get("/team/#{slug}/mismatched-constraint")).not_to route_to(
          controller: 'external_link',
          action: 'show',
          person_id: slug,
          link_name: 'mismatched-constraint',
          locale: 'en'
        )
      end
    end

    context 'with pl locale and mismatching route constraints' do
      let(:id) { SecureRandom.uuid }

      it 'does not return route to #show' do
        expect(get("/pl/zespol/#{id}/mismatched-constraint")).not_to route_to(
          controller: 'external_link',
          action: 'show',
          person_id: id,
          link_name: 'mismatched-constraint',
          locale: 'pl'
        )
      end
    end
  end
end
