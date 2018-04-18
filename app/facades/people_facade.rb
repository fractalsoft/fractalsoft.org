class PeopleFacade
  def self.list
    Person.order(:fullname).includes(:translations).all.decorate
  end
end
