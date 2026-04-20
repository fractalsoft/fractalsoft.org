# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index
    @projects_page = ProjectsFacade.new(filter_key: params[:filter], locale: I18n.locale)
  end

  def show
    @project = Project.friendly.find(params[:id])
  end
end
