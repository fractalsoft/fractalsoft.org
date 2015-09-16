# Home facade
class HomeFacade
  attr_reader :people, :contact

  def initialize
    @people = Person.includes(:translations).all.decorate.shuffle
    @contact = ContactForm.new
  end
end
