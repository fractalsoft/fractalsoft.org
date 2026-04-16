# frozen_string_literal: true

class HomeFacade
  attr_reader :people, :contact, :featured_projects, :innovation_hub_highlights

  def initialize
    @people = PeopleFacade.list
    @contact = ContactForm.new
    @featured_projects = Project.featured_or_displayed.limit(2)
    @innovation_hub_highlights = build_innovation_hub_highlights
  end

  private

  def build_innovation_hub_highlights
    base = InnovationHubArticle.visible.recent.includes(:translations)

    research = base.where(kind: %w[research experiment]).first
    insight = base.where(kind: %w[insight case_note]).first
    asset = InnovationHubAsset.visible.ordered.includes(:translations).first

    { research: research, insight: insight, asset: asset }
  end
end
