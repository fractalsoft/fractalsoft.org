# frozen_string_literal: true

class InnovationHubsController < ApplicationController
  ALLOWED_TABS = InnovationHubFacade::FILTERS.freeze

  before_action :set_article, only: :show

  def index
    @active_tab = normalized_tab
    @hub = InnovationHubFacade.new(tab: @active_tab)
  end

  def show
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
