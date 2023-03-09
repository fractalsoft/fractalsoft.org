class CommunitiesController < ApplicationController
  before_action :set_page_caching
  caches_page :index, :show

  # GET /communities
  def index
    @communities = Community.sorted.all
  end

  # GET /communities/slug
  def show
    @community = Community.friendly.find(params[:id])
  end
end
