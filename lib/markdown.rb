# frozen_string_literal: true

require 'commonmarker'

class Markdown
  EXTENSION = {
    autolink: true,
    footnotes: true,
    strikethrough: true,
    table: true,
    tagfilter: false,
    tasklist: true
  }.freeze

  RENDER = {
    hardbreaks: false,
    unsafe: true
  }.freeze

  def initialize(input)
    @input = input
  end

  def to_html
    Commonmarker.to_html(input, options:)
  end

  private

  attr_reader :input

  def options
    {
      extension: EXTENSION,
      render: RENDER
    }
  end
end
