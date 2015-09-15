require 'csv'
require 'singleton'

module Antibot
  # Trap bot class
  class Trap
    include Singleton
    attr_accessor :path

    def append(ip, useragent, referer)
      file = File.open(filename, 'a')
      file << %("#{ip}";"#{useragent}";"#{referer}";\n)
      file.close
    end

    def cache(ip)
      Rails.cache.write("block #{ip}", true, expires_in: 1.year)
    end

    def filename
      @filename ||= Rails.root.join('tmp', 'antibot', "bots_#{Rails.env}.csv")
    end

    def insert(ip, useragent, referer)
      cache(ip)
      append(ip, useragent, referer)
    end

    def load
      FileUtils.touch(filename) unless File.exist?(filename)
      traps = CSV.read(filename, col_sep: ';').transpose[0].try(:uniq) || []
      traps.each { |ip| cache(ip) }
    end

    def run(env)
      request = Rack::Request.new env
      insert(request.ip, request.user_agent, request.referer)
      [200, { 'Content-Type' => 'text/plain' }, ['']]
    end

    def uniq
      data = File.read(filename).split("\n").uniq
      file = File.open(filename, 'w')
      file << data.join("\n")
      file.close
    end
  end
end
