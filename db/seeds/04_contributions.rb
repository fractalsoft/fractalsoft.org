require 'oj'

json_file = File.join(Rails.root, 'db', 'seeds', 'basic', 'data.json')
hash = Oj.load(File.read(json_file), symbol_keys: true)

hash[:team].each do |params|
  contributions = params.delete(:contributions) || []
  person = Person.find_by(nickname: params[:nickname])
  contributions.each do |project_params|
    slug = project_params.delete(:slug)
    project = Project.find_by(slug: slug)
    project_params[:names].each do |name|
      item = name[:name] || name[:name_en]
      options = { person_id: person.id, project_id: project.id, name: item }
      Contribution.where(options).first_or_create(name)
    end
  end
end
