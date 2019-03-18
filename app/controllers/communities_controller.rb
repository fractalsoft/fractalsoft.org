class CommunitiesController < ApplicationController
  # GET /communities
  def index
    @communities = Community.sorted.all
  end

  # GET /communities/slug
  def show
    @community = Community.find(params[:id])
  end
end
