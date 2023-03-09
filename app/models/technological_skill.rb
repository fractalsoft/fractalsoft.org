class TechnologicalSkill < ApplicationRecord
  belongs_to :person, touch: true
  belongs_to :technology
end
