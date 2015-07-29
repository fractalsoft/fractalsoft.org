YAML.load_file('db/team.yml')['team'].each do |hash|
  Person.create hash.symbolize_keys
end
