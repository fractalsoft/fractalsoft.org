# Application helper
module ApplicationHelper
  # Example: charset: 'utf-8'
  def default_meta_tags
    I18n.t(:meta).merge(separator: '-')
  end
end
