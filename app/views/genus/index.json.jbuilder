json.array!(@genus) do |genu|
  json.extract! genu, :id, :name, :description
  json.url genu_url(genu, format: :json)
end
