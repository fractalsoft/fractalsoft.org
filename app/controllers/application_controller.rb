# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  private

  def set_locale
    I18n.locale = params[:locale] if params[:locale]
  end

  def set_page_caching
    @page_caching = true
  end
end
