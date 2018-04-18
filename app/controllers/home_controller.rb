class HomeController < ApplicationController
  # caches_page :index
  # before_action(only: [:index]) { @page_caching = true }

  def index
    @home = HomeFacade.new
    # expires_in 30.minutes, public: true
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
