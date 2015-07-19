# Home controller
class HomeController < ApplicationController
  caches_page :index
  before_filter(only: [:index]) { @page_caching = true }

  def index
    @contact_form = ContactForm.new
    @people = Person.all
    expires_in 30.minutes, public: true
  end
end
