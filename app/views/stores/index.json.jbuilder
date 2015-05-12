json.array!(@stores) do |store|
  json.extract! store, :id, :name, :cnpj, :description, :location, :banner
  json.url store_url(store, format: :json)
end
