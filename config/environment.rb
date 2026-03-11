# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

class Rails::Application
  def secret_key_base
    if Rails.env.development? || Rails.env.test? || ENV["SECRET_KEY_BASE_DUMMY"]
      ENV["SECRET_KEY_BASE"].presence ||
        credentials.secret_key_base.presence ||
        generate_development_secret
    else
      validate_secret_key_base(
        ENV["SECRET_KEY_BASE"] || credentials.secret_key_base
      )
    end
  end
end
