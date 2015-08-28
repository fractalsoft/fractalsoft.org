class Contribution < ActiveRecord::Base
  translates :name, :string

  belongs_to :project
  belongs_to :person
end
