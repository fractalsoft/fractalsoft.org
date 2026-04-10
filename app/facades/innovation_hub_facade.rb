# frozen_string_literal: true

class InnovationHubFacade
  FILTERS = %w[research insights assets].freeze

  attr_reader :articles, :research_articles, :insight_articles, :featured_article, :practical_assets, :repository_assets

  def initialize(tab: nil)
    @active_tab = FILTERS.include?(tab.to_s) ? tab.to_s : nil
    @articles = InnovationHubArticle.visible.recent.includes(:translations)
    @research_articles = @articles.research.limit(6)
    @insight_articles = @articles.where(kind: %w[insight case_note]).limit(6)
    @featured_article = @articles.featured.first || @insight_articles.first || @research_articles.first
    @practical_assets = InnovationHubAsset.visible.ordered.includes(:translations).limit(4)
    @repository_assets = InnovationHubRepository.visible.ordered.includes(:translations).limit(3)
  end

  def active_tab
    @active_tab
  end

  def listing_mode?
    active_tab.present?
  end

  def filtered_articles
    case active_tab
    when 'research'
      @articles.where(kind: %w[research experiment])
    when 'insights'
      @articles.where(kind: %w[insight case_note])
    else
      InnovationHubArticle.none
    end
  end

  def filtered_assets
    return InnovationHubAsset.none unless active_tab == 'assets'

    InnovationHubAsset.visible.ordered.includes(:translations)
  end
end
