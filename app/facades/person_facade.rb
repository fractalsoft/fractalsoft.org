# Person facade
class PersonFacade
  attr_reader :person, :projects

  delegate :fullname, :position, :image,
           :blog, :github, :twitter, :facebook, :instagram, :google, :youtube,
           :introduction, :saying, :skills, :technologies,
           :project_with_contributions,
           to: :person, prefix: false

  def initialize(id)
    @person = Person.friendly.find(id).decorate
    @projects = @person.projects.includes(:translations).decorate
  end
end
