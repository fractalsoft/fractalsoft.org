require 'markdown'

module Handlers
  class MarkdownHandler
    def call(_template, body)
      Markdown.new(body).to_html.inspect
    end
  end
end
