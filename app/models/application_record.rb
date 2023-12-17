# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  class << self
    def translates(*attr_names)
      attr_names.each { |attr_name| attribute attr_name }
      super
    end
  end
end
