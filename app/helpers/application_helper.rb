# frozen_string_literal: true

require 'holiday_calendar'

module ApplicationHelper
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

  # Example: charset: 'utf-8'
  def default_meta_tags
    I18n.t(:meta).merge(separator: '|', author: '/humans.txt', reverse: true)
  end

  def embedded_svg(svg_body, options: {}, title: nil)
    doc = Nokogiri::HTML::DocumentFragment.parse(svg_body)
    svg = doc.at_css 'svg'

    svg.add_child("<title>#{title}</title>") if title
    options.each { |attribute, value| svg[attribute.to_s] = value }

    doc.to_html.html_safe
  end

  def flash_class(flash_type)
    {
      alert: 'danger',
      notice: 'success'
    }[flash_type.to_sym]
  end

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
                          stripped.match?(/\A[\p{L}\d][\p{L}\d\s\-\+\:\/&,'".]+\z/u)

      standalone_section_label = heading_candidate && prev_line.empty? && next_line.present?

      if standalone_section_label
        normalized_lines << "## #{stripped.delete_suffix(':')}"
      else
        normalized_lines << line
      end
    end

    normalized_lines.join("\n")
  end
end
