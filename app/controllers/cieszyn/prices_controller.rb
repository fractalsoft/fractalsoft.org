module Cieszyn
  class PricesController < ApplicationController
    def index
      @computer_fix_services = ComputerFixService.all
    end
  end
end
