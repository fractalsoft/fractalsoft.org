# Person model
class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  translates :introduction, :text

  def name
    nickname || fullname.try(:permanent)
  end
end
