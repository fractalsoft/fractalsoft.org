# Person facade
class PersonFacade
  PARAMS = [
    :blog,
    :display,
    :facebook,
    :fullname,
    :github,
    :google,
    :image,
    :instagram,
    :introduction,
    :linkedin,
    :position,
    :project_with_contributions,
    :saying,
    :skills,
    :technologies,
    :twitter,
    :youtube
  ]

  attr_reader :person, :projects

  delegate(*PARAMS, to: :person, prefix: false)

  def initialize(id)
    @person = Person.friendly.find(id).decorate
    @projects = @person.projects.includes(:translations).decorate
  end
end
