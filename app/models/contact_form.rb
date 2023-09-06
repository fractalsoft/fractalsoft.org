class ContactForm < MailForm::Base
  include ActiveModel::Validations
  append :remote_ip, :user_agent
  attribute :browser_info
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+(\w{2,})\z/i
  attribute :message, validate: true
  attribute :name, validate: true
  attribute :nickname, captcha: true

  validates :email, mx_record: true

  def headers
    {
      from: Rails.application.secrets.noreply_email,
      to: Rails.application.secrets.contact_email
    }
  end
end
