# frozen_string_literal: true

class BusinessContactFormsController < ApplicationController
  before_action :set_business_contact_form, only: :create

  def show; end

  def new
    @business_contact_form = BusinessContactForm.new
  end

  def create
    if @business_contact_form.deliver
      redirect_to business_contact_forms_path(locale: params[:locale])
    else
      render :new
    end
  end

  private

  def set_business_contact_form
    @business_contact_form = BusinessContactForm.new(params[:business_contact_form])
  end
end
