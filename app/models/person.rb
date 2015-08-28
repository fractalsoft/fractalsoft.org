# Person model
class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  translates :introduction, :text

  has_many :contributions
  has_many :projects, through: :contributions

  def name
    nickname || fullname.try(:permanent)
  end
end
