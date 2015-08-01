# Application helper
module ApplicationHelper
  # Example: charset: 'utf-8'
  def default_meta_tags
    I18n.t(:meta).merge(separator: '-', author: '/humans.txt')
  end

  def locale_name_pairs
    I18n.available_locales.map do |locale|
      [locale.to_s, I18n.t('language', locale: locale)]
    end
  end

  def locale_names
    @locale_names ||= Hash[locale_name_pairs]
  end
end
