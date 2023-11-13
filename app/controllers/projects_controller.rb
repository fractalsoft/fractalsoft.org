class ProjectsController < ApplicationController
  before_action :set_page_caching
  caches_action :index, :show

  def index
    @projects = Project.all
  end

  def show
    @project = Project.friendly.find(params[:id])
  end
end
