# People controller
class PeopleController < ApplicationController
  def index
    @people = Person.all.decorate.shuffle
  end

  def show
    @person = Person.friendly.find(params[:id]).decorate
  end
end
