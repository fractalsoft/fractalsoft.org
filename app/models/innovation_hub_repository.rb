# frozen_string_literal: true

class InnovationHubRepository < ApplicationRecord
  translates :description, :usage_context

  scope :visible, -> { where(display: true) }
  scope :ordered, -> { order(position: :asc, created_at: :asc) }

  validates :title, :slug, :url, presence: true
end
