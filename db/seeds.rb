YAML.load_file('db/projects.yml')['projects'].each do |array|
  image = File.open(Rails.root + 'db' + array['thumbnail'])
  project = Project.create(
    title: array['title'],
    subtitle: array['subtitle'],
    description: array['description'],
    url: array['url'],
    thumbnail: image,
    year: array['year']
  )

  array['images'].each do |hash|
    file = File.open(Rails.root + 'db' + hash['image'])
    image = Image.create(image: file, kind: hash['kind'], project: project)
  end
end

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
