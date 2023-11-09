# frozen_string_literal: true

class DomainsController < ApplicationController
  MAP_SLUG_TO_VIEW_NAME = {
    'technika-dla-rolnika' => 'technika_dla_rolnika'
  }.freeze

  private_constant :MAP_SLUG_TO_VIEW_NAME

  def show
    name_of_view = MAP_SLUG_TO_VIEW_NAME[params[:id]] or not_found
    markdown = Rails.root.join("app/views/domains/_#{name_of_view}.md").read
    @body = Markdown.new(markdown).to_html
  end

  private

  def not_found
    raise ActionController::RoutingError, 'Not Found'
  end
end
