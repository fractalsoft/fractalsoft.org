require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module FractalSoft
  # Main application
  class Application < Rails::Application
    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
    end
    config.load_defaults 5.1
    config.i18n.available_locales = [:en, :pl]
    config.i18n.default_locale = :en
    config.i18n.fallbacks = true
    config.middleware.use Rack::Attack # unless Rails.env.development?
    config.middleware.use Rack::Deflater
    # config.middleware.use AntibotMiddleware, '/trap'
  end
end
