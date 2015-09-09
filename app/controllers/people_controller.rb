# People controller
class PeopleController < ApplicationController
  def index
    @people = Person.includes(:translations).all.decorate.shuffle
  end

  def show
    @person = Person.friendly.find(params[:id]).decorate
    @projects = @person.projects.includes(:translations).decorate
  end
end
