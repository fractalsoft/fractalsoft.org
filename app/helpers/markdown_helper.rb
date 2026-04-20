# frozen_string_literal: true

# rubocop:disable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity

module MarkdownHelper
  MARKDOWN_ALLOWED_TAGS = %w[
    h1 h2 h3 h4 h5 h6
    p br hr
    ul ol li
    strong em
    blockquote
    pre code
    a
  ].freeze

  MARKDOWN_ALLOWED_ATTRIBUTES = %w[href title].freeze

  def render_markdown(markdown_text)
    normalized_markdown = normalize_markdown_sections(markdown_text)

    html = Commonmarker.to_html(
      normalized_markdown,
      options: {
        extension: {
          strikethrough: true,
          table: true,
          autolink: true
        },
        parse: {
          smart: true
        },
        render: {
          unsafe: false
        }
      }
    )

    sanitize(html, tags: MARKDOWN_ALLOWED_TAGS, attributes: MARKDOWN_ALLOWED_ATTRIBUTES)
  end

  def normalize_markdown_sections(markdown_text)
    lines = markdown_text.to_s.split("\n")
    normalized_lines = []

    lines.each_with_index do |line, index|
      stripped = line.strip

      next_line = index < lines.length - 1 ? lines[index + 1].strip : ''
      prev_line = index.positive? ? lines[index - 1].strip : ''

      heading_candidate = stripped.present? &&
                          stripped.length <= 72 &&
                          !stripped.start_with?('#', '-', '*', '>', '`') &&
                          stripped !~ /^\d+\)/ &&
                          stripped !~ /^[a-z]/ &&
                          stripped.match?(%r{\A[\p{L}\d][\p{L}\d\s\-+:/&,'".]+\z}u)

      standalone_section_label = heading_candidate && prev_line.empty? && next_line.present?

      normalized_lines << if standalone_section_label
                            "## #{stripped.delete_suffix(':')}"
                          else
                            line
                          end
    end

    normalized_lines.join("\n")
  end
end
# rubocop:enable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity
