# Extend request
class Rack::Attack::Request < ::Rack::Request
  def localhost?
    ip == '127.0.0.1'
  end

  def unknown?
    user_agent == '-'
  end
end

# Set blacklist using IPs, User Agents & url path
class Rack::Attack
  blacklist_folder = Rails.root.join('config', 'blacklist')

  ips = File.read("#{blacklist_folder}/ip.txt").split("\n")
  ips_regexp = Regexp.union(ips)
  blacklist('Block bad IP address') do |request|
    request.ip =~ ips_regexp
  end

  Rack::Attack.blacklist('Block naughty bots <ip>') do |request|
    Rails.cache.fetch("block #{request.ip}").present?
  end

  paths = File.read("#{blacklist_folder}/path.txt").split("\n")
  paths_regexp = Regexp.union(paths)
  blacklist('Block bad paths') do |request|
    request.path =~ paths_regexp
  end

  referers = File.read("#{blacklist_folder}/referer.txt").split("\n")
  referers_regexp = Regexp.union(referers)
  blacklist('Block bad referers') do |request|
    request.referer =~ referers_regexp
  end

  user_agents = File.read("#{blacklist_folder}/useragent.txt").split("\n")
  regexp = Regexp.union(user_agents)
  user_agents_regexp = Regexp.new(regexp.source, Regexp::IGNORECASE)
  blacklist('Block bad User Agents') do |request|
    request.user_agent =~ user_agents_regexp
  end

  throttle('Too many requests', limit: 300, period: 5.minutes) do |request|
    request.ip unless request.path.starts_with?('/assets')
  end

  blacklist('Block unknown User Agents') { |request| request.unknown? }
  whitelist('Accept requests from localhost') { |request| request.localhost? }
end

Rack::Attack.blacklisted_response = lambda do |_env|
  # Using 503 because it may make attacker think that they have successfully
  # DOSed the site. Rack::Attack returns 403 for blacklists by default
  [503, {}, ['Blocked']]
end

Rack::Attack.throttled_response = lambda do |env|
  # name and other data about the matched throttle
  body = [
    env['rack.attack.matched'],
    # env['rack.attack.match_type'],
    # env['rack.attack.match_data']
  ].inspect

  # Using 503 because it may make attacker think that they have successfully
  # DOSed the site. Rack::Attack returns 429 for throttling by default
  [503, {}, [body]]
end
