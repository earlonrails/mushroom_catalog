json.array!(@species) do |species|
  json.extract! species, :id, :name, :description
  json.url species_url(species, format: :json)
end
