require 'markdown'

module Handlers
  class MarkdownHandler
    class_attribute :default_format
    self.default_format = Mime[:html]

    def call(_template, body)
      Markdown.new(body).to_html.inspect
    end
  end
end
