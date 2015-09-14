require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)
require "#{__dir__}/../lib/antibot"

module FractalSoft
  # Main application
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.i18n.available_locales = [:en, :pl]
    config.i18n.default_locale = :en
    config.middleware.use Rack::Attack # unless Rails.env.development?
    config.i18n.fallbacks = true

    config.middleware.use 'Antibot::Middleware'
  end
end
