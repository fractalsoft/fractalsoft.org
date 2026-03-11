# frozen_string_literal: true

module AppCredentials
  module_function

  def contact_email
    ENV['FRACTALSOFT_CONTACT_EMAIL'].presence ||
      credential(:contact_email) ||
      ('test@example.com' if Rails.env.test?)
  end

  def noreply_email
    ENV['FRACTALSOFT_NOREPLY_EMAIL'].presence ||
      credential(:noreply_email) ||
      ('test@example.com' if Rails.env.test?)
  end

  def credential(key)
    cfg = Rails.application.credentials.config
    return nil unless cfg.is_a?(Hash)

    cfg[key] || cfg[key.to_s]
  end
end
