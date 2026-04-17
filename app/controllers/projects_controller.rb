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
    'fintech' => /fintech|payment|wallet|invoice|transaction/i,
    'cloud' => /cloud|kubernetes|microservices|infrastructure|devops/i,
    'ai' => /ai|ml|machine learning|llm|agent/i,
    'legacy' => /legacy|recovery|refactor|refactoring/i
  }.freeze

  def apply_filter(scope, filter_key)
    return scope if filter_key.blank?

    rx = FILTERS[filter_key]
    return scope if rx.nil?

    scope.select do |p|
      haystack = [p.title, p.subtitle, p.introduction, p.description].compact.join(' ')
      haystack.match?(rx)
    end
  end
end
