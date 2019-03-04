class HomeController < ApplicationController
  before_action :set_locale

  def index
    @home = HomeFacade.new
  end

  private

  def default_url_options(options = {})
    locale = I18n.locale
    options[:locale] = locale
    options
  end

  def detect_locale
    locales = I18n.available_locales
    http_accept_language.compatible_language_from(locales)
  end

  def set_locale
    super
    return if I18n.default_locale == I18n.locale
    I18n.locale = params[:locale] || detect_locale
  end
end
