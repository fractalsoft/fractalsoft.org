# Application controller
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  private

  def default_url_options(options = {})
    locale = I18n.locale
    options.merge(locale: locale) unless I18n.default_locale == locale
    options
  end

  def detect_locale
    locales = I18n.available_locales
    http_accept_language.compatible_language_from(locales)
  end

  def redirect_to_locale(locale = :pl)
    return if I18n.locale == locale
    params[:locale] = locale
    redirect_to url_for(params)
  end

  def set_locale
    I18n.locale = params[:locale] || detect_locale
  end
end
