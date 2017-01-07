require 'resolv'

# https://en.wikipedia.org/wiki/MX_record
class MxRecordValidator < ActiveModel::EachValidator
  attr_reader :email

  def validate_each(record, attribute, email)
    @email = email
    record.errors.add(attribute, :fake_email) if mail_servers.empty?
  end

  private

  def domain_name
    email.split('@').last
  end

  def mail_servers
    Resolv::DNS.open.getresources(
      domain_name,
      Resolv::DNS::Resource::IN::MX
    )
  end
end
