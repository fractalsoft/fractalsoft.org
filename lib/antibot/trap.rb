require 'csv'

module Antibot
  # Trap bot class
  class Trap
    def initialize
    end

    def run(env)
      @env = env
      insert(request.ip, request.user_agent, request.referer)
      [200, { 'Content-Type' => 'text/plain' }, ['']]
    end

    def insert(ip, useragent, _referer)
      Rails.cache.write("block #{ip}", true, expires_in: 1.year)
      file = File.open(filename, 'a')
      file << %("#{ip}";"#{useragent}";\n)
      file.close
    end

    def uniq
      data = File.read(filename).split("\n").uniq
      file = File.open(filename, 'w')
      file << data.join("\n")
      file.close
    end

    def load
      FileUtils.touch(filename) unless File.exist?(filename)
      traps = CSV.read(filename, col_sep: ';').transpose[0].try(:uniq) || []
      traps.each do |ip|
        Rails.cache.write("block #{ip}", true, expires_in: 1.year)
      end
    end

    def filename
      @filename ||= Rails.root.join('tmp', 'antibot', "bots_#{Rails.env}.csv")
    end

    private

    def request
      @request ||= Rack::Request.new @env
    end
  end
end
