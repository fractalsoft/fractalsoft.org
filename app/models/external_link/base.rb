module ExternalLink
  class Base
    include ActionView::Context
    include ActionView::Helpers
    include ::ApplicationHelper

    DEFAULT_OPTIONS = {
      rel: %w[
        nofollow
        noopener
        noreferrer
      ].join(' '),
      target: '_blank'
    }.freeze

    def initialize(path: '#', title: '', width: '32px')
      @path = path
      @title = title
      @width = width
    end

    def link
      return unless path

      link_to(icon, url, title:, **options)
    end

    def self.link(**params)
      new(**params).link
    end

    private

    attr_reader :path, :title, :width

    def icon
      content_tag :span, class: 'icon' do
        svg_path = Rails.public_path.join(*image_url.split('/'))
        svg_body = File.read(svg_path)
        embedded_svg svg_body, options: { width:, height: width }
      end
    end

    def image_url
      raise
    end

    def options
      DEFAULT_OPTIONS
    end

    def url
      raise
    end
  end
end
