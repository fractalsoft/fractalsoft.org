# frozen_string_literal: true

class Contribution < ApplicationRecord
  translates :name

  belongs_to :project, optional: true
  belongs_to :person, optional: true, touch: true
end
