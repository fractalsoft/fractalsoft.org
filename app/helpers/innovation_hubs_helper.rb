# frozen_string_literal: true

module InnovationHubsHelper
  COVER_WIDTH = 1280
  COVER_HEIGHT = 430
  COVER_PLACEHOLDER = 'https://placehold.co/1280x430/0b1220/f8fafc?text=Innovation+Hub'

  def innovation_hub_cover_tag(url, alt:, variant: :card, **options)
    image_tag(url.presence || COVER_PLACEHOLDER, cover_tag_options(alt, variant, options))
  end

  def innovation_hub_cover_preload_tag(url)
    return if url.blank?

    tag.link rel: 'preload', href: url, as: 'image', type: 'image/webp', fetchpriority: 'high'
  end

  private

  def cover_tag_options(alt, variant, options)
    cover_priority_options(variant)
      .merge(cover_dimension_options(alt))
      .merge(options)
  end

  def cover_priority_options(variant)
    return { fetchpriority: 'high' } if variant == :hero

    { loading: 'lazy' }
  end

  def cover_dimension_options(alt)
    { alt: alt.to_s, width: COVER_WIDTH, height: COVER_HEIGHT, decoding: 'async' }
  end
end
