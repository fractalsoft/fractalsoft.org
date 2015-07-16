# Sessions controller to change language
class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:update]

  def update
    expire_page root_path
    session[:locale] = params[:locale]
    redirect_to :back
  end
end
