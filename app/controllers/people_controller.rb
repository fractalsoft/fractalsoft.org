# People controller
class PeopleController < ApplicationController
  def index
    @people = Person.includes(:translations).all.decorate.shuffle
  end

  def show
    @person = PersonFacade.new(params[:id])
  end
end
