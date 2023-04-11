class Technology < ApplicationRecord
  extend FriendlyId
  enum category: {
    backend: 0,
    cloud_computing: 10,
    code_formatter: 15,
    continuous_integration: 16,
    database: 1,
    frontend: 2,
    gamedev: 3,
    linter: 14,
    mobile: 4,
    mathematical_software: 5,
    operating_system: 6,
    project_management_software: 13,
    search_engine: 12,
    testing: 7,
    tool: 8,
    web_server: 11,
    web: 9
  }
  friendly_id :slug, use: [:slugged, :finders]
  translates :description, :meta_description, :meta_title, :name, :title

  scope :linters_and_code_formaters, -> { linter.or(code_formatter) }
  scope :sorted, -> { order(position: :asc) }

  def any_image?
    logotype_or_image.present?
  end

  def image_base64
    return unless icon

    svg_to_base64(icon)
  end

  def logotype_base64
    return unless icon_wordmark

    svg_to_base64(icon_wordmark)
  end

  def logotype_or_image
    icon_wordmark || icon
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
