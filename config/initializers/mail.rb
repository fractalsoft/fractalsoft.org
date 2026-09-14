# frozen_string_literal: true

module AppMailerConfig
  module_function

  def smtp_settings
    {
      address:              env_or_credential('REGULAR_MAILER_ADDRESS', :regular_mailer_address),
      port:                 env_or_credential('REGULAR_MAILER_PORT', :regular_mailer_port),
      user_name:            env_or_credential('REGULAR_MAILER_USERNAME', :regular_mailer_username),
      password:             env_or_credential('REGULAR_MAILER_PASSWORD', :regular_mailer_password),
      domain:               env_or_credential('REGULAR_MAILER_DOMAIN', :regular_mailer_domain),
      authentication:       env_or_credential('REGULAR_MAILER_AUTHENTICATION', :regular_mailer_authentication),
      ssl:                  true,
      enable_starttls_auto: true,
      open_timeout:         5,
      read_timeout:         5
    }
  end

  def env_or_credential(env_key, cred_key)
    ENV[env_key].presence || credential(cred_key)
  end

  def credential(key)
    cfg = Rails.application.credentials.config
    return nil unless cfg.is_a?(Hash)

    cfg[key] || cfg[key.to_s]
  end
end

ActionMailer::Base.smtp_settings = AppMailerConfig.smtp_settings
ActionMailer::Base.delivery_method = :smtp
