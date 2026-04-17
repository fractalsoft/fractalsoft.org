# frozen_string_literal: true

class InnovationHubsController < ApplicationController
  def index
    @hub = InnovationHubFacade.new(tab: params[:tab])
  end

  def show
    @article = InnovationHubArticle.visible.friendly.find(params[:id])
  end
end
