# Home controller
class HomeController < ApplicationController
  def index
    @contact_form = ContactForm.new
    @people = Person.all
  end
end
