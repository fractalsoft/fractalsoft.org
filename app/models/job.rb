class Job < ApplicationRecord
  translates :name, touch: true
end
