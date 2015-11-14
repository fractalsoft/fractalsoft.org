module Cieszyn
  # render prices of jobs
  class PricesController < ApplicationController
    # before_action :redirect_to_locale

    def index
      @jobs = Job.all
    end
  end
end
