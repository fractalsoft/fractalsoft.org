require 'redcarpet'

class Markdown
  EXTENSIONS = {
    autolink: true,
    fenced_code_blocks: true,
    space_after_headers: true,
    strikethrough: true,
    tables: true
  }.freeze

  def initialize(input)
    @input = input
  end

  def to_html
    @markdown = Redcarpet::Markdown.new(renderer, EXTENSIONS)
    @markdown.render(input)
  end

  private

  attr_reader :input

  def renderer
    Redcarpet::Render::HTML.new(link_attributes: { rel: 'nofollow' })
  end
end
