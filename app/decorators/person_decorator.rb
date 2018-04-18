class PersonDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all
  OPTIONS = {
    rel: %w[
      nofollow
      noopener
      noreferrer
    ].join(' '),
    target: '_blank'
  }.freeze

  %i[blog facebook github instagram linkedin twitter vimeo].each do |name|
    define_method(name) do
      send :given_icon, name
    end
  end

  def email
    content = method(:given_li)
    given :email, :mail_to, &content
  end

  def image
    image_tag object.image
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

  def technologies
    array = person.technology_list
    render 'people/technologies', technologies: array unless array.empty?
  end

  def website
    given :website do
      link_to object.website, object.website
    end
  end

  private

  def given(method, link = :link_to, &block)
    block.call(method, link) if object.send(method)
  end

  def given_icon(name)
    content = method(:given_li)
    given name, &content
  end

  def given_li(name, link)
    content_tag :li do
      send link, send("#{name}_url"), title: social_title(name), **OPTIONS do
        content_tag(:span, nil, class: "icon icons-#{name}")
      end
    end
  end

  def email_url
    object.email
  end

  def blog_url
    object.blog
  end

  def facebook_url
    "https://facebook.com/#{object.facebook}"
  end

  def github_url
    "https://github.com/#{object.github}"
  end

  def instagram_url
    "https://instagram.com/#{object.instagram}"
  end

  def linkedin_url
    "https://linkedin.com/in/#{object.linkedin}"
  end

  def twitter_url
    "https://twitter.com/#{object.twitter}"
  end

  def social_title(name)
    I18n.t(name, scope: 'social.title')
  end

  def vimeo_url
    "https://vimeo.com/#{object.vimeo}"
  end
end
