class ProjectDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all
  delegate :display, to: :object

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def subtitle
    raw object.subtitle
  end

  def introduction
    raw object.introduction
  end
end
