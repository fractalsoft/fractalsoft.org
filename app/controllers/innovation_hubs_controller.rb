# frozen_string_literal: true

class InnovationHubsController < ApplicationController
  before_action :set_page_caching
  caches_action :index, :show

  def index
    @recent_research = []
  end
end

