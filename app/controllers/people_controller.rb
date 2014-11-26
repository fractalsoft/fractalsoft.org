# People controller
class PeopleController < ApplicationController
  # GET /people
  # GET /people.json
  def index
    @people = Person.all.decorate.shuffle
  end
end
