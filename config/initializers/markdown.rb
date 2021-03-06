require 'redcarpet'

module ActionView
  module Template::Handlers
    # Rails template handler for Markdown
    class Markdown
      class_attribute :default_format
      self.default_format = Mime[:html]

      # @param template [ActionView::Template]
      # @return [String] Ruby code that when evaluated will return the rendered
      #   content
      def call(template, body)
        @markdown ||= Redcarpet::Markdown.new(renderer, params)
        "#{@markdown.render(body).inspect}.html_safe"
      end

      private

      def params
        {
          autolink: true, fenced_code_blocks: true,
          space_after_headers: true, tables: true
        }
      end

      def renderer
        options = {
          link_attributes: { rel: 'nofollow' }
        }
        Redcarpet::Render::HTML.new(options)
      end
    end
  end
end

ActionView::Template.register_template_handler(
  :md,
  ActionView::Template::Handlers::Markdown.new
)
