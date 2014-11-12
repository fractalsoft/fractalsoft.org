# Contact Forms Controller
class ContactFormsController < ApplicationController
  def create
    @contact = ContactForm.new(params[:contact_form])
    @contact.deliver
    redirect_to root_path
  end
end
