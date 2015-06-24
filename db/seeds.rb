YAML.load_file('db/team.yml')['team'].each do |array|
  Person.create(
    fullname: array['fullname'],
    description: array['description'],
    position: array['position'],
    image: array['image'],
    website: array['website'],
    facebook: array['facebook'],
    twitter: array['twitter'],
    github: array['github'],
    email: array['email']
  )
end
