# Home controller
class HomeController < ApplicationController
  def index
    @contact = ContactForm.new
  end
end
