# Contact Form
class ContactForm < MailForm::Base
  include ActiveModel::Validations
  append :remote_ip, :user_agent
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, validate: true
  attribute :name, validate: true

  def headers
    {
      from: %("#{name}" <#{email}>),
      to: Rails.application.secrets.contact_email
    }
  end
end
