# frozen_string_literal: true

class HomeFacade
  attr_reader :people, :contact

  def initialize
    @people = PeopleFacade.list
    @contact = ContactForm.new
  end
end
