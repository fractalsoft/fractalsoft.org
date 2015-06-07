# Home controller
class HomeController < ApplicationController
  def index
    @contact = ContactForm.new
    @people = Person.all
  end
end
