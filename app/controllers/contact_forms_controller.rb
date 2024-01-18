# frozen_string_literal: true

class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    request.remote_ip = request.env['HTTP_FLY_CLIENT_IP'] || request.remote_ip
    @contact_form = ContactForm.new(params[:contact_form])
    @contact_form.request = request
    @contact_form.deliver ? flash[:notice] = t('.success') : flash[:alert] = t('.fail')
    redirect_to "#{@contact_form.request.referrer}#contact"
  end
end
