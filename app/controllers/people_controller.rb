# People controller
class PeopleController < ApplicationController
  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end
end
