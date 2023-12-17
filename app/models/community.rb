# frozen_string_literal: true

class Community < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  translates :description, :introduction, :meta_description, :title
  scope :sorted, -> { order(position: :asc) }

  mount_uploader :logo, CommunityLogoUploader
  mount_uploader :logotype, CommunityLogotypeUploader
end
