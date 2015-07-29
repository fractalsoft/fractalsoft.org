# Person Decorator
class PersonDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  def email
    content = method(:given_li)
    given :email, :mail_to, &content
  end

  def facebook
    given_icon :facebook
  end

  def github
    given_icon :github
  end

  def twitter
    given_icon :twitter
  end

  def blog
    given_icon :blog
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
      send link, object.send(name) do
        content_tag(:span, nil, class: "icon icons-#{name}")
      end
    end
  end
end
