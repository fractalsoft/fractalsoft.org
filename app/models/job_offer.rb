class JobOffer < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  translates :brief, :description, :headline, :introduction, :meta_description, :meta_title, :name, :title

  scope :published, -> { where(published: true) }
  scope :sorted, -> { order(position: :asc) }
end
