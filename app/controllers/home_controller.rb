# Home controller
class HomeController < ApplicationController
  caches_page :index
  before_filter(only: [:index]) { @page_caching = true }

  def index
    @home = HomeFacade.new
    expires_in 30.minutes, public: true
  end

  private

  def set_locale
    return if default_locale?
    I18n.locale = params[:locale] || detect_locale
  end
end
