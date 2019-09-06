class PersonFacade
  PARAMS = [
    :blog,
    :display,
    :facebook,
    :fullname,
    :github,
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
    :vimeo,
    :website,
    :youtube
  ].freeze

  attr_reader :person, :projects

  delegate(*PARAMS, to: :person, prefix: false)

  def initialize(id)
    @person = Person.friendly.find(id).decorate
    @projects = @person.projects.includes(:translations).decorate
  end
end
