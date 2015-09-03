YAML.load_file('db/team.yml')['team'].each do |params|
  params.symbolize_keys!
  introduction = params.delete(:introduction)
  params.merge! Hash[
    introduction.map { |key, value| ["introduction_#{key}", value] }
  ]
  Person.create!(params)
end

YAML.load_file('db/projects.yml')['projects'].each do |hash|
  hash.symbolize_keys!
  project = Project.create(title: hash.delete(:title))

  hash.each do |key, value|
    value.symbolize_keys.each do |locale, text|
      I18n.locale = locale
      project.send("#{key}=", text)
      project.save
    end
  end
end

YAML.load_file('db/contributions.yml')['contributions'].each do |hash|
  hash.symbolize_keys!
  project = Project.find_by(title: hash.delete(:project_title))
  person = Person.find_by(fullname: hash.delete(:person_fullname))

  hash[:names].each do |translations|
    params = { project: project, person: person }
    params.merge! Hash[translations.map { |key, name| ["name_#{key}", name] }]
    Contribution.create!(params)
  end
end
