# frozen_string_literal: true

class PrivacyPoliciesController < ApplicationController
  def show
    path = Rails.root.join("app/views/privacy_policies/content.#{I18n.locale}.md")
    path = Rails.root.join('app/views/privacy_policies/content.en.md') unless path.exist?

    @body = Markdown.new(path.read).to_html
  end
end
