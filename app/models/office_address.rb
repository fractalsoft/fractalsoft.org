class OfficeAddress < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  translates :country, :name
  scope :sorted, -> { order(position: :asc) }
end
