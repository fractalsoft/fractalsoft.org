# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AboutHelper do
  describe '#about_photo_tag' do
    it 'lazy-loads a sized WebP photo' do
      html = about_photo_tag(
        'about-culture',
        alt: 'Engineering team culture',
        height_class: 'h-28',
        width: 800,
        height: 436
      )

      aggregate_failures do
        expect(html).to include('about-culture.webp')
        expect(html).to include('width="800"')
        expect(html).to include('height="436"')
        expect(html).to include('loading="lazy"')
        expect(html).to include('decoding="async"')
      end
    end
  end
end
