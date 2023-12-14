class BusinessContactForm < MailForm::Base
  include ActiveModel::Validations

  attribute :attached_file, attachment: true
  attribute :company_name
  attribute :email, validate: true
  attribute :first_name, validate: true
  attribute :industry
  attribute :last_name
  attribute :message
  attribute :need_nda
  attribute :phone_number
  attribute :phone_country_code
  attribute :phone_country_iso2

  def headers
    {
      from: Rails.application.secrets.noreply_email,
      to: Rails.application.secrets.contact_email
    }
  end
end
