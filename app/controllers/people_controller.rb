class PeopleController < ApplicationController
  def index
    @people = PeopleFacade.list
  end

  def show
    @person = PersonFacade.new(params[:id])
  end
end
