# frozen_string_literal: true

class PeopleFacade
  def self.list
    Person.order(:full_name).includes(:translations).all.decorate
  end
end
