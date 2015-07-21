# Application controller
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  private

  def default_url_options(options = {})
    language = I18n.locale
    options.merge(locale: language) unless I18n.default_locale == language
    options
  end

  def set_locale
    I18n.locale = params[:locale] || detect_locale
  end

  def detect_locale
    locales = I18n.available_locales
    http_accept_language.compatible_language_from(locales)
  end
end
