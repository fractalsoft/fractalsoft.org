class Contribution < ApplicationRecord
  translates :name

  belongs_to :project, optional: true
  belongs_to :person, optional: true
end
