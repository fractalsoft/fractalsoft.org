module Antibot
  class Config
    def self.trap_path
      path = ENV['antibot_url_path'] || 'trap'
      "/#{path}"
    end
  end
end
