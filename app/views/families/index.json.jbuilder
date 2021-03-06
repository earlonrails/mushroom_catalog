json.array!(@families) do |family|
  json.extract! family, :id, :name, :description
  json.url family_url(family, format: :json)
end
