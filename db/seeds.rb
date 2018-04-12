require 'oj'

hash = Oj.load(File.read('db/data.json'), symbol_keys: true)

hash[:projects].each do |params|
  Project.create_or_update_by_keys([:title], params)
end

hash[:team].each do |params|
  contributions = params.delete(:contributions) || []
  person = Person.create_or_update_by_keys(
    [:nickname, :fullname],
    params
  )
  contributions.each do |project_params|
    title = project_params.delete(:title)
    project = Project.find_by(title: title)
    project_params[:names].each do |name|
      item = name[:name] || name[:name_en]
      options = { person_id: person.id, project_id: project.id, name: item }
      Contribution.where(options).first_or_create(name)
    end
  end
end

hash[:jobs].each_with_index do |params, index|
  Job.where(name: params[:name]).first_or_create(
    params.merge(position: index + 1)
  )
end
