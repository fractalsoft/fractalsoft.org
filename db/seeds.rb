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
