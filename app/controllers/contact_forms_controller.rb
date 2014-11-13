# Contact Forms Controller
class ContactFormsController < ApplicationController
  def new
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(params[:contact_form])
    @contact.deliver
    redirect_to root_path
  end
end
