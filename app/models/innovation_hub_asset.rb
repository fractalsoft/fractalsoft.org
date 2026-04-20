# frozen_string_literal: true

class InnovationHubAsset < ApplicationRecord
  ACTION_TYPES = %w[read download].freeze

  translates :title, :description, :usage_context
  before_validation :sync_base_title

  enum :kind, {
    cheatsheet: 'cheatsheet',
    diagram: 'diagram',
    template: 'template',
    runbook: 'runbook'
  }, validate: true

  scope :visible, -> { where(display: true) }
  scope :ordered, -> { order(position: :asc, created_at: :asc) }

  validates :title, :kind, :url, :action_type, presence: true
  validates :action_type, inclusion: { in: ACTION_TYPES }

  def download_filename
    extension = File.extname(URI.parse(url).path).presence || '.bin'
    "#{title.to_s.parameterize}#{extension}"
  rescue URI::InvalidURIError
    "#{title.to_s.parameterize}.bin"
  end

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
