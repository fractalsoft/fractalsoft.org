ActionMailer::Base.smtp_settings = {
  address:   'smtp.mandrillapp.com',
  port:      587,
  user_name: Rails.application.secrets.mandrill_username,
  password:  Rails.application.secrets.mandrill_api_key,
  domain:    'fractalsoft.org'
}
ActionMailer::Base.delivery_method = :smtp

MandrillMailer.configure do |config|
  config.api_key =  Rails.application.secrets.mandrill_api_key
end
