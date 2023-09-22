module ExternalLink
  class Base
    include ActionView::Context
    include ActionView::Helpers
    include ::ApplicationHelper

    def initialize(path: '#', title: '')
      @path = path
      @title = title
    end

    def link
      return unless path

      link_to(icon, url, title:, rel: 'noopener', target: '_blank')
    end

    def self.link(path: '#', title: '')
      new(path:, title:).link
    end

    private

    attr_reader :path, :title

    def icon
      content_tag :span, class: 'icon' do
        svg_path = Rails.public_path.join(*image_url.split('/'))
        svg_body = File.read(svg_path)
        embedded_svg svg_body, options: { height: '32px', width: '32px' }
      end
    end

    def image_url
      raise
    end

    def url
      path.to_s
    end
  end
end
