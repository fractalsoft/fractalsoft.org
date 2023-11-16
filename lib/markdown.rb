require 'commonmarker'

class Markdown
  RENDER = {
    hardbreaks: false
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
      render: RENDER
    }
  end
end
