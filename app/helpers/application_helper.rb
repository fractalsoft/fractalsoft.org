module ApplicationHelper
  # Example: charset: 'utf-8'
  def default_meta_tags
    I18n.t(:meta).merge(separator: '|', author: '/humans.txt', reverse: true)
  end

  # rubocop:disable Rails/OutputSafety
  def embedded_svg(svg_body, options: {}, title: nil)
    doc = Nokogiri::HTML::DocumentFragment.parse(svg_body)
    svg = doc.at_css 'svg'

    svg.add_child("<title>#{title}</title>") if title
    options.each { |attribute, value| svg[attribute.to_s] = value }

    doc.to_html.html_safe
  end
  # rubocop:enable Rails/OutputSafety
end
