# Person Decorator
class PersonDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  def email
    given :email do
      mail_to object.email do
        image_tag 'home/email_icon.png'
      end
    end
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

  def website
    given :website do
      link_to object.website, object.website
    end
  end

  private

  def given(method, &block)
    block.call if object.send(method)
  end

  def given_icon(name)
    given name do
      link_to object.send(name) do
        image_tag "home/#{name}_icon.png"
      end
    end
  end
end
