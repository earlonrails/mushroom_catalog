json.array!(@spore_prints) do |spore_print|
  json.extract! spore_print, :id, :name, :description, :src
  json.url spore_print_url(spore_print, format: :json)
end
