require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module FractalSoft
  # Main application
  class Application < Rails::Application
    config.action_controller.page_cache_directory = Rails.public_path.join('cached_pages')
    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
    end
    config.load_defaults 6.1
    config.i18n.available_locales = [:en, :pl]
    config.i18n.default_locale = :en
    config.i18n.fallbacks = true
    config.middleware.use Rack::Deflater
  end
end
