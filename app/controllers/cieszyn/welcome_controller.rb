module Cieszyn
  # Welcome visitors of Cieszyn office
  class WelcomeController < ApplicationController
    before_action :redirect_to_locale

    def show
    end
  end
end
