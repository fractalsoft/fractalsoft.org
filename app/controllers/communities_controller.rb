# frozen_string_literal: true

class CommunitiesController < ApplicationController
  before_action :set_page_caching
  caches_action :index, :show

  # GET /communities
  def index
    @communities = Community.sorted.all
  end

  # GET /communities/slug
  def show
    @community = Community.friendly.find(params[:id])
  end
end
