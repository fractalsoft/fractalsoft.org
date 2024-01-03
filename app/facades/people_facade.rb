# frozen_string_literal: true

class PeopleFacade
  def self.list
    Person.order(:full_name).includes(:translations).published.decorate
  end
end
