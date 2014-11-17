YAML.load_file('db/projects.yml')['projects'].each do |array|
  image = File.open(Rails.root + 'db' + array['thumbnail'])
  Project.create(
    title: array['title'],
    subtitle: array['subtitle'],
    description: array['description'],
    url: array['url'],
    thumbnail: image,
    year: array['year']
  )
end
