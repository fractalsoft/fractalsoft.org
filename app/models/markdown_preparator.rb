class MarkdownPreparator
  include ::ApplicationHelper

  REGEXP = /\[technology:(.*)\](\<([AIL])\>)?/
  attr_reader :output

  def initialize(input)
    @input = input
    @output = input.gsub(REGEXP) do
      prepare(slug: Regexp.last_match(1), type: Regexp.last_match(3))
    end
  end

  def self.render(input)
    new(input).output
  end

  private

  attr_reader :input

  def image_data(technology, type:)
    case type
    when 'I' then technology.icon
    when 'L' then technology.icon_wordmark
    else technology.logotype_or_image
    end
  end

  def prepare(slug:, type:)
    technology = Technology.find_by(slug:)
    return slug unless technology

    source = image_data(technology, type:)
    return technology.title unless source

    embedded_svg(source, options: { height: '64px', width: '64px' }, title: technology.title)
  end
end
