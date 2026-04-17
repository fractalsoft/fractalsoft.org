# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index
    scope = Project.where(display: true).order(position: :asc, year: :desc)
    @projects_page = ProjectsFacade.new(scope: scope, filter_key: params[:filter], locale: I18n.locale)
  end

  def show
    @project = Project.friendly.find(params[:id])
  end
end
