class Community < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  translates :description, :introduction, :meta_description, :name, :title
  globalize_accessors attributes: translated_attribute_names,
                      locales: I18n.available_locales
  scope :sorted, -> { order(position: :asc) }

  mount_uploader :logo, CommunityLogoUploader
  mount_uploader :logotype, CommunityLogotypeUploader
end
