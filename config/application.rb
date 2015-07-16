require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)

module FractalSoft
  # Main application
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.i18n.available_locales = [:en, :pl]
    config.i18n.default_locale = :en
    config.middleware.use Rack::Attack
  end
end
