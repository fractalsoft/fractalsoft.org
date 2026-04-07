# frozen_string_literal: true

class InnovationHubArticle < ApplicationRecord
  extend FriendlyId

  translates :summary, :body
  friendly_id :slug, use: :slugged

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
end
