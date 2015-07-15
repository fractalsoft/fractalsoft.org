# Sessions controller to change language
class SessionsController < ApplicationController
  def update
    session[:locale] = params[:locale]
    redirect_to :back
  end
end
