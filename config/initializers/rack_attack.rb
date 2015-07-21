class Rack::Attack
  blacklist_folder = Rails.root.join('config', 'blacklist')

  ips = File.read("#{blacklist_folder}/ip.txt").split("\n")
  ips_regexp = Regexp.union(ips)
  blacklist('block bad IP address') do |request|
    request.ip =~ ips_regexp
  end

  paths = File.read("#{blacklist_folder}/path.txt").split("\n")
  paths_regexp = Regexp.union(paths)
  blacklist('block bad paths') do |request|
    request.path =~ paths_regexp
  end

  user_agents = File.read("#{blacklist_folder}/useragent.txt").split("\n")
  user_agents_regexp = Regexp.union(user_agents)
  blacklist('block bad User Agents') do |request|
    request.user_agent =~ user_agents_regexp
  end

  blacklist('block unknown User Agents') do |request|
    request.user_agent == '-'
  end

  throttle('req/ip', limit: 300, period: 5.minutes) do |req|
    req.ip # unless req.path.starts_with?('/assets')
  end
end

Rack::Attack.blacklisted_response = lambda do |env|
  # Using 503 because it may make attacker think that they have successfully
  # DOSed the site. Rack::Attack returns 403 for blacklists by default
  [503, {}, ['Blocked']]
end
