# frozen_string_literal: true

class ExternalLinkController < ApplicationController
  layout nil

  def show
    person = Person.find(params[:person_id])
    url = person.public_send("#{link_name}_url")
    redirect_to url, allow_other_host: true, status: :found
  end

  private

  def link_name
    return unless Person::LINK_NAMES.include?(params[:link_name])

    params[:link_name]
  end
end
