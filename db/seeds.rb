YAML.load_file('db/team.yml')['team'].each do |hash|
  params = hash.symbolize_keys
  introduction = params.delete(:introduction)
  person = Person.create params

  next unless introduction

  introduction.symbolize_keys.each do |locale, text|
    I18n.locale = locale
    person.introduction = text
    person.save
  end
end

YAML.load_file('db/projects.yml')['projects'].each do |hash|
  params = hash.symbolize_keys
  project = Project.create(title: params.delete(:title))

  params.each do |key, value|
    value.symbolize_keys.each do |locale, text|
      I18n.locale = locale
      project.send("#{key}=", text)
      project.save
    end
  end
end
