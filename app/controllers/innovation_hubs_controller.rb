# frozen_string_literal: true

class InnovationHubsController < ApplicationController
  ALLOWED_TABS = InnovationHubFacade::FILTERS.freeze

  before_action :set_page_caching
  caches_action :index, :show
  before_action :set_article, only: :show

  def index
    @active_tab = normalized_tab
    @hub = InnovationHubFacade.new(tab: @active_tab)
    @newsletter_form = ContactForm.new
  end

  def show
    @related_articles = InnovationHubArticle.visible
                                          .where(kind: @article.kind)
                                          .where.not(id: @article.id)
                                          .recent
                                          .limit(3)
  end

  private

  def set_article
    @article = InnovationHubArticle.visible.friendly.find(params[:id])
  end

  def normalized_tab
    tab = params[:tab].to_s
    ALLOWED_TABS.include?(tab) ? tab : nil
  end
end

