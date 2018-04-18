module ApplicationHelper
  # Example: charset: 'utf-8'
  def default_meta_tags
    I18n.t(:meta).merge(separator: '-', author: '/humans.txt', reverse: true)
  end

  def link_to_locale(locale, &block)
    options = (I18n.default_locale == locale) ? nil : { locale: locale }
    html_options = { rel: 'alternate', hreflang: locale }
    name = locale_names[locale.to_s]
    link_to_unless_current name, options, html_options, &block
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
