# frozen_string_literal: true

class InnovationHubFacade
  FILTERS = %w[research insights assets].freeze
  ARTICLE_FILTER_KINDS = {
    'research' => %w[research experiment],
    'insights' => %w[insight case_note]
  }.freeze

  attr_reader :active_tab, :articles, :research_articles, :insight_articles, :featured_article, :practical_assets,
              :repository_assets

  def self.normalize_tab(tab)
    value = tab.to_s
    FILTERS.include?(value) ? value : nil
  end

  def initialize(tab: nil)
    @active_tab = self.class.normalize_tab(tab)
    load_articles
    load_assets
  end

  def listing_mode?
    active_tab.present?
  end

  def filtered_articles
    kinds = ARTICLE_FILTER_KINDS[active_tab]
    return InnovationHubArticle.none if kinds.nil?

    @articles.where(kind: kinds)
  end

  def filtered_assets
    return InnovationHubAsset.none unless active_tab == 'assets'

    InnovationHubAsset.visible.ordered.includes(:translations)
  end

  private

  def load_articles
    @articles = InnovationHubArticle.visible.recent.includes(:translations)
    @research_articles = @articles.research.limit(6)
    @insight_articles = @articles.where(kind: ARTICLE_FILTER_KINDS.fetch('insights')).limit(6)
    @featured_article = @articles.featured.first || @insight_articles.first || @research_articles.first
  end

  def load_assets
    @practical_assets = InnovationHubAsset.visible.ordered.includes(:translations).limit(4)
    @repository_assets = InnovationHubRepository.visible.ordered.includes(:translations).limit(3)
  end
end
