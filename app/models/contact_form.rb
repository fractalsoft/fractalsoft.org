# Contact Form
class ContactForm < MailForm::Base
  include ActiveModel::Validations
  append :remote_ip, :user_agent
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, validate: true
  attribute :name, validate: true
  attribute :nickname, captcha: true
  attribute :browser_info

  validates :email, mx_record: true

  def headers
    {
      from: Rails.application.secrets.from_email,
      to: Rails.application.secrets.contact_email
    }
  end
end
