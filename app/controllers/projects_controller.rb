# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index
    @projects = Project.where(display: true).order(position: :asc, year: :desc)
    @projects = apply_filter(@projects, params[:filter])
  end

  def show
    @project = Project.friendly.find(params[:id])
  end

  private

  FILTERS = {
    'all' => nil,
    'modernization' => { engagement_type: 'modernization' },
    'automation' => { engagement_type: 'automation' },
    'product' => { engagement_type: 'product' },
    'integration' => { engagement_type: 'integration' },
    'ai' => { engagement_type: 'ai' },
  }.freeze

  def apply_filter(scope, filter_key)
    key = filter_key.presence || 'all'
    filter = FILTERS[key]

    return scope if filter.blank?

    scope.where(filter)
  end
end
