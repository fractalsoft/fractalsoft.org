class PersonDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  LINK_NAMES = %w[
    Blog
    Facebook
    Github
    Instagram
    Linkedin
    Twitter
    Vimeo
    Website
    Youtube
  ].freeze

  # Metaprogramming
  # def method_name
  #   ExternalLink::ClassName.link path: object.method_name,
  #                                title: social_title(:method_name)
  # end
  LINK_NAMES.each do |name|
    method_name = name.downcase
    define_method(method_name) do
      class_name = "ExternalLink::#{name}".constantize
      html = class_name.link path: object.send(method_name),
                             title: social_title(method_name.to_sym)
      return unless html

      content_tag :li, html
    end
  end

  def image
    image_tag object.image, alt: ''
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

  def social_title(name)
    I18n.t(name, scope: 'social.title')
  end
end
