# frozen_string_literal: true

class HomeFacade
  attr_reader :people, :contact, :featured_projects

  def initialize
    @people = PeopleFacade.list
    @contact = ContactForm.new
    @featured_projects = Project.featured_or_displayed.limit(2)
  end
end
