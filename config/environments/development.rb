Rails.application.configure do
  config.action_controller.page_cache_directory = "#{Rails.public_path}/cache"
  config.action_controller.perform_caching = false # use true for caching
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_url_options = { host: 'localhost:3000' }
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.smtp_settings = { address: 'localhost', port: 1025 }
  config.active_record.migration_error = :page_load
  config.active_support.deprecation = :log
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true
  config.cache_classes = false
  config.consider_all_requests_local = true
  config.eager_load = false
  config.middleware.use Oink::Middleware, logger: Rails.logger

  config.after_initialize do
    Bullet.enable = true
    Bullet.alert = true
    Bullet.console = true
    Bullet.rails_logger = true
    Bullet.add_footer = true
  end
end
