# Application controller
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale
  rescue_from ActionController::UnknownFormat, with: :raise_not_found

  private

  def raise_not_found
    render(text: 'Not Found', status: 404)
  end

  def set_locale
    I18n.locale = params[:locale] if params[:locale]
  end
end
