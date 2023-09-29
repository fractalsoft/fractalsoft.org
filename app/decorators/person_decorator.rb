class PersonDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  # Metaprogramming
  # def method_name
  #   ExternalLink.new(link_type: object.method_name, url: object.method_name_url).link
  # end
  Person::LINK_NAMES.each do |link_name|
    define_method(link_name) do
      return if object.public_send("#{link_name}_url").blank?

      url = person_external_link_path(person_id: object.slug, link_name:)
      html = ExternalLink.new(link_type: link_name, url:).link
      content_tag :li, html, class: 'social-link list-inline-item'
    end
  end

  def image
    image_tag object.image, alt: '', class: 'rounded-circle', size: '256x256'
  end

  def introduction
    raw person.introduction
  end

  def project_with_contributions(project)
    person.project_with_contributions(project).map(&:name)
  end

  def saying
    given :saying do
      content_tag(:blockquote, raw(person.saying), class: 'saying')
    end
  end

  def skills
    array = person.skill_list
    render 'people/skills', skills: array unless array.empty?
  end

  private

  def given(method, link = :link_to)
    yield(method, link) if object.send(method)
  end
end
