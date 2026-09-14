require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.enable_reloading = false
  config.eager_load = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  # Fly does not inject runtime secrets during `docker build`.
  # `rails assets:precompile` still boots this environment, and Rails 8
  # Active Record encryption reads credentials at eager load. A dummy
  # SECRET_KEY_BASE does not skip that. This app has no credentials.yml.enc;
  # runtime settings come from Fly env vars.
  precompiling_assets = defined?(Rake.application) &&
    Rake.application.top_level_tasks.any? { |task| task.start_with?("assets:") }

  config.require_master_key = !precompiling_assets && (
    ENV["RAILS_MASTER_KEY"].present? || File.exist?(Rails.root.join("config/master.key"))
  )
  config.active_storage.service = :local
  config.force_ssl = true

  config.logger = ActiveSupport::Logger.new(STDOUT)
    .tap  { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

  config.log_tags = [ :request_id ]
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL") { "info" }
  config.action_mailer.perform_caching = false
  config.i18n.fallbacks = true
  config.active_support.report_deprecations = false
  config.active_record.dump_schema_after_migration = false
  config.active_record.attributes_for_inspect = [ :id ]
end
