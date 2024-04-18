# frozen_string_literal: true

class ExternalLinkController < ApplicationController
  layout nil

  def show
    person = Person.find(permitted_params[:person_id])
    url = person.public_send(link_name_url)
    redirect_to url, allow_other_host: true, status: :found
  end

  private

  def link_name_url
    escaped_link_name = ERB::Util.html_escape(permitted_params[:link_name])
    return unless Person::LINK_NAMES.include?(escaped_link_name)

    :"#{escaped_link_name}_url"
  end

  def permitted_params
    @permitted_params ||= params.permit(:link_name, :person_id)
  end
end
