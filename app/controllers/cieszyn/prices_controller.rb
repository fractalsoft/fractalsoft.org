module Cieszyn
  class PricesController < ApplicationController
    def index
      @jobs = Job.all
    end
  end
end
