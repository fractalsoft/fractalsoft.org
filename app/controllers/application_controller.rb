# Application controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  rescue_from ActionController::UnknownFormat, with: :raise_not_found

  private

  def raise_not_found
    render(text: 'Not Found', status: 404)
  end

  def set_locale
    I18n.locale = params[:locale] if params[:locale]
  end
end
