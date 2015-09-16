# Home controller
class HomeController < ApplicationController
  caches_page :index
  before_filter(only: [:index]) { @page_caching = true }

  def index
    @home = HomeFacade.new
    expires_in 30.minutes, public: true
  end
end
