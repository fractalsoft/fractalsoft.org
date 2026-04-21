# frozen_string_literal: true

require 'holiday_calendar'

module ApplicationHelper
  include MarkdownHelper

  FLASH_CLASS_MAP = {
    alert: 'error',
    notice: 'success',
    error: 'error',
    success: 'success',
    warning: 'warning',
    info: 'info'
  }.freeze

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
    FLASH_CLASS_MAP.fetch(flash_type.to_sym) { 'info' }
  end
end
