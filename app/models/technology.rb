class Technology < ApplicationRecord
  extend FriendlyId
  enum category: {
    backend: 0,
    database: 1,
    frontend: 2,
    gamedev: 3,
    mobile: 4,
    ms: 5,
    os: 6,
    testing: 7,
    tool: 8,
    web: 9
  }
  friendly_id :slug, use: [:slugged, :finders]
  translates :description, :meta_description, :meta_title, :name, :title

  scope :sorted, -> { order(position: :asc) }

  def any_image?
    !(icon_wordmark || icon).nil?
  end

  def image_base64
    return unless icon

    svg_to_base64(icon)
  end

  def logotype_base64
    return unless icon_wordmark

    svg_to_base64(icon_wordmark)
  end

  def logotype_or_image_base64
    logotype_base64 || image_base64
  end

  private

  def svg_to_base64(svg)
    base64 = Base64.encode64(svg)
    "data:image/svg+xml;base64,#{base64}"
  end
end
