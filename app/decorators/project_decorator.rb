class ProjectDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all
  delegate :display, to: :object

  def subtitle
    raw object.subtitle
  end

  def introduction
    raw object.introduction
  end
end
