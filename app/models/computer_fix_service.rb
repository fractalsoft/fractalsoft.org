# frozen_string_literal: true

class ComputerFixService < ApplicationRecord
  translates :name, touch: true
end
