class PeopleController < ApplicationController
  before_action :set_page_caching
  caches_page :index, :show

  def index
    @people = PeopleFacade.list
  end

  def show
    @person = PersonFacade.new(params[:id])
  end
end
