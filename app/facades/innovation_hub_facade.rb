# frozen_string_literal: true

class InnovationHubFacade
  attr_reader :articles, :research_articles, :insight_articles, :featured_article, :practical_assets, :repository_assets

  def initialize
    @articles = InnovationHubArticle.visible.recent.includes(:translations)
    @research_articles = @articles.research.limit(6)
    @insight_articles = @articles.insight.limit(6)
    @featured_article = @articles.featured.first || @insight_articles.first || @research_articles.first
    @practical_assets = InnovationHubAsset.visible.ordered.includes(:translations).limit(4)
    @repository_assets = InnovationHubRepository.visible.ordered.includes(:translations).limit(3)
  end
end
