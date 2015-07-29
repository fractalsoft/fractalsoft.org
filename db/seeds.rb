YAML.load_file('db/team.yml')['team'].each do |array|
  Person.create(
    fullname: array['fullname'],
    description: array['description'],
    position: array['position'],
    image: array['image'],
    github: array['github'],
    blog: array['blog'],
    twitter: array['twitter'],
    facebook: array['facebook'],
    email: array['email']
  )
end
