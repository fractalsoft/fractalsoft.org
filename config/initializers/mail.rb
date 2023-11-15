ActionMailer::Base.smtp_settings = {
  address:              Rails.application.secrets.regular_mailer_address,
  port:                 Rails.application.secrets.regular_mailer_port,
  user_name:            Rails.application.secrets.regular_mailer_username,
  password:             Rails.application.secrets.regular_mailer_password,
  domain:               Rails.application.secrets.regular_mailer_domain,
  authentication:       Rails.application.secrets.regular_mailer_authentication,
  ssl:                  true,
  enable_starttls_auto: true,
  open_timeout:         5,
  read_timeout:         5
}
ActionMailer::Base.delivery_method = :smtp
