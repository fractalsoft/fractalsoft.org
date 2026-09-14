# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InnovationHubsHelper do
  describe '#innovation_hub_cover_tag' do
    it 'marks the hero as a high-priority LCP image with display dimensions' do
      html = innovation_hub_cover_tag(
        '/innovation-articles/cover.webp',
        alt: 'Cover',
        variant: :hero
      )

      aggregate_failures do
        expect(html).to include('width="1280"')
        expect(html).to include('height="430"')
        expect(html).to include('fetchpriority="high"')
        expect(html).to include('decoding="async"')
        expect(html).not_to include('loading="lazy"')
      end
    end

    it 'lazy-loads card covers at the same display size' do
      html = innovation_hub_cover_tag('/innovation-articles/cover.webp', alt: 'Cover')

      aggregate_failures do
        expect(html).to include('loading="lazy"')
        expect(html).to include('width="1280"')
        expect(html).to include('height="430"')
      end
    end
  end

  describe '#innovation_hub_cover_preload_tag' do
    it 'preloads a WebP cover as a high-priority image' do
      html = innovation_hub_cover_preload_tag('/innovation-articles/cover.webp')

      aggregate_failures do
        expect(html).to include('rel="preload"')
        expect(html).to include('as="image"')
        expect(html).to include('type="image/webp"')
        expect(html).to include('fetchpriority="high"')
        expect(html).to include('/innovation-articles/cover.webp')
      end
    end

    it 'skips preload when the cover is missing' do
      expect(innovation_hub_cover_preload_tag(nil)).to be_nil
    end
  end
end
