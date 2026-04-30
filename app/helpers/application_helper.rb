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

  def current_language_label
    Language.available[I18n.locale.to_sym] || I18n.locale.to_s.upcase
  end

  def language_switch_options
    current_locale = I18n.locale.to_sym

    Language.available.map do |locale, name|
      locale_value = locale.to_sym
      target_url = url_for(locale: locale_value, only_path: true, params: request.query_parameters)

      {
        name:,
        locale: locale_value,
        active: locale_value == current_locale,
        target_url:,
        hreflang: locale_value == I18n.default_locale ? 'x-default' : locale_value
      }
    rescue ActionController::UrlGenerationError
      {
        name:,
        locale: locale_value,
        active: locale_value == current_locale,
        target_url: root_path(locale: locale_value),
        hreflang: locale_value == I18n.default_locale ? 'x-default' : locale_value
      }
    end
  end
end
