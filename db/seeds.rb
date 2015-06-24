YAML.load_file('db/team.yml')['team'].each do |array|
  image = File.open(Rails.root + 'db' + array['image'])
  Person.create(
    fullname: array['fullname'],
    description: array['description'],
    position: array['position'],
    image: image,
    website: array['website'],
    facebook: array['facebook'],
    twitter: array['twitter'],
    github: array['github'],
    email: array['email']
  )
end
