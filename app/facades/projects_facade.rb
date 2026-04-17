# frozen_string_literal: true

class ProjectsFacade
  FilterTab = Data.define(:label, :path, :active)
  ProjectCard = Data.define(:project, :media_url, :title, :tag, :description, :reverse_layout)

  FILTERS = {
    'all' => nil,
    'modernization' => { engagement_type: 'modernization' },
    'automation' => { engagement_type: 'automation' },
    'product' => { engagement_type: 'product' },
    'integration' => { engagement_type: 'integration' },
    'ai' => { engagement_type: 'ai' },
  }.freeze

  def initialize(scope:, filter_key:, locale:)
    @scope = scope
    @active_filter_key = normalize_filter(filter_key)
    @locale = locale
  end

  def projects
    @projects ||= begin
      filter = FILTERS[@active_filter_key]
      filter.blank? ? @scope : @scope.where(filter)
    end
  end

  def filter_tabs
    FILTERS.keys.map do |key|
      FilterTab.new(
        label: I18n.t("projects.index.tabs.#{key}"),
        path: filter_tab_path(key),
        active: key == @active_filter_key
      )
    end
  end

  def project_cards
    projects.each_with_index.map do |project, idx|
      title = project.title
      ProjectCard.new(
        project: project,
        media_url: project.thumbnail_url(:thumb).presence,
        title: title,
        tag: project.subtitle.presence || title.to_s,
        description: project.introduction.presence || project.description.presence || '',
        reverse_layout: idx.odd?
      )
    end
  end

  private

  def normalize_filter(filter_key)
    key = filter_key.presence || 'all'
    FILTERS.key?(key) ? key : 'all'
  end

  def filter_tab_path(key)
    if key == 'all'
      routes.projects_path(locale: @locale)
    else
      routes.projects_path(locale: @locale, filter: key)
    end
  end

  def routes
    Rails.application.routes.url_helpers
  end
end
