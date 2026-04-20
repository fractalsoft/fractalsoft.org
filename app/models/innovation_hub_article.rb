# frozen_string_literal: true

class InnovationHubArticle < ApplicationRecord
  extend FriendlyId

  translates :title, :summary, :body
  friendly_id :slug, use: :slugged
  before_validation :sync_base_title

  enum :kind, {
    research: 'research',
    insight: 'insight',
    experiment: 'experiment',
    case_note: 'case_note'
  }, validate: true

  scope :visible, -> { where(display: true) }
  scope :recent, -> { order(published_at: :desc, position: :asc) }
  scope :featured, -> { where(featured: true) }

  validates :title, :slug, :kind, :author_name, :read_time, :published_at, presence: true

  private

  def sync_base_title
    return if self[:title].present?

    self[:title] = localized_title_candidate
  end

  def localized_title_candidate
    title.to_s.presence ||
      globalize.translations.filter_map { |translation| translation.title.to_s.presence }.first
  end
end
