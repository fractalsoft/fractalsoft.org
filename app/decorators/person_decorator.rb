# Person Decorator
class PersonDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  %i(blog facebook github twitter).each do |name|
    define_method(name) do
      send :given_icon, name
    end
  end

  def email
    content = method(:given_li)
    given :email, :mail_to, &content
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
      send link, send("#{name}_url"), title: name do
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

  def twitter_url
    "https://twitter.com/#{object.twitter}"
  end
end
