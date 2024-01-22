# frozen_string_literal: true

class ContactFormsController < ApplicationController
  before_action :set_remote_ip

  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(params[:contact_form])
    @contact_form.request = request
    @contact_form.deliver ? flash[:notice] = t('.success') : flash[:alert] = t('.fail')
    redirect_to "#{@contact_form.request.referrer}#contact"
  end

  private

  def set_remote_ip
    request.remote_ip = request.env['HTTP_FLY_CLIENT_IP'] || request.remote_ip
  end
end
