module Cieszyn
  # render prices of jobs
  class PricesController < ApplicationController
    def index
      @jobs = Job.all
    end
  end
end
