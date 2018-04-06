# Contribution class
class Contribution < ApplicationRecord
  translates :name, :string
  globalize_accessors locales: I18n.available_locales,
                      attributes: translated_attribute_names

  belongs_to :project
  belongs_to :person
end
