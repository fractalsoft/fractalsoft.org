# People controller
class PeopleController < ApplicationController
  def index
    @people = Person.all.decorate.shuffle
  end

  def show
    @person = Person.find(params[:id]).decorate
  end
end
