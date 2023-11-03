class TechnologicalSkill < ApplicationRecord
  belongs_to :person, inverse_of: :technological_skills, touch: true
  belongs_to :technology

  scope :sorted, -> { order(position: :asc) }

  validates :rating, presence: true
end
