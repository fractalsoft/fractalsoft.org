module ApplicationHelper
  # Example: charset: 'utf-8'
  def default_meta_tags
    I18n.t(:meta).merge(separator: '-', author: '/humans.txt', reverse: true)
  end
end
