class OfficeAddress < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]
  translates :country, :name
  globalize_accessors attributes: translated_attribute_names,
                      locales: I18n.available_locales
  scope :sorted, -> { order(position: :asc) }
end
