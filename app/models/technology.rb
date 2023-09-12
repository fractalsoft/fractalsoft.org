class Technology < ApplicationRecord
  extend FriendlyId
  enum category: {
    unknown: 0,
    amazon_web_services: 1,
    backend: 2,
    cloud_computing: 3,
    code_formatter: 4,
    continuous_integration: 5,
    database: 6,
    frontend: 7,
    gamedev: 8,
    linter: 9,
    mobile: 10,
    mathematical_software: 11,
    operating_system: 12,
    project_management_software: 13,
    search_engine: 14,
    testing: 15,
    tool: 16,
    web_server: 17,
    web: 18
  }
  friendly_id :slug, use: [:slugged, :finders]
  translates :description, :meta_description, :meta_title, :name, :title

  scope :linters_and_code_formatters, -> { linter.or(code_formatter) }
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
