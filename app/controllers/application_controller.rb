# Application controller
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  private

  def set_locale
    I18n.locale = session[:locale] || detect_locale
  end

  def detect_locale
    locales = I18n.available_locales
    http_accept_language.compatible_language_from(locales)
  end
end
