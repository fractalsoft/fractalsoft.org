require 'resolv'

# https://en.wikipedia.org/wiki/MX_record
class MxRecordValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, email)
    mail_servers = MailServersFromEmail.new(email)
    record.errors.add(attribute, :fake_email) unless mail_servers.valid?
  end

  class MailServersFromEmail
    attr_reader :email

    def initialize(email)
      @email = email
    end

    def valid?
      !(domain_name.blank? || mail_servers.empty?)
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
end
