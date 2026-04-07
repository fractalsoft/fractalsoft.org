# frozen_string_literal: true

class InnovationHubsController < ApplicationController
  before_action :set_page_caching
  caches_action :index, :show
  before_action :set_article, only: :show

  def index
    @hub = InnovationHubFacade.new
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
end

