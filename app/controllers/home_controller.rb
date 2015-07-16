# Home controller
class HomeController < ApplicationController
  caches_page :index
  before_filter(only: [:index]) { @page_caching = true }

  def index
    @contact_form = ContactForm.new
    @people = Person.all
  end
end
