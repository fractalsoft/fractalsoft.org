# Contact Form
class ContactForm < MailForm::Base
  include ActiveModel::Validations

  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, validate: true
  attribute :name, validate: true

  def headers
    {
      subject: 'Fractal Soft - contact form',
      to: Rails.application.secrets.contact_email,
      from: %("#{name}" <#{email}>)
    }
  end
end
