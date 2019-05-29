class MarkdownPreparator
  REGEXP = /\[technology:(.*)\](\<([AIL])\>)?/.freeze
  attr_reader :output

  def initialize(input)
    @input = input
    @output = input.gsub(REGEXP) do
      prepare(slug: $1, type: $3)
    end
  end

  def self.render(input)
    new(input).output
  end

  private

  attr_reader :input

  def image_data(technology, type:)
    case type
    when 'I' then technology.image_base64
    when 'L' then technology.logotype_base64
    else technology.logotype_or_image_base64
    end
  end

  def options(technology)
    "alt='#{technology.name}' title='#{technology.title}' width='64px'"
  end

  def prepare(slug:, type:)
    technology = Technology.find_by(slug: slug)
    return slug unless technology
    source = image_data(technology, type: type)
    return technology.title unless source
    "<img src='#{source}' #{options(technology)}>"
  end
end
