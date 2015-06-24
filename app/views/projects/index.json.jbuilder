json.array!(@projects) do |project|
  json.extract! project, :id, :title, :subtitle, :descritpion, :url, :thumbnail
  json.url project_url(project, format: :json)
end
