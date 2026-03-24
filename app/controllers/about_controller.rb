# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    @team_members = Person.published.sorted.includes(:translations).limit(4)
  end
end
