json.array!(@crappers) do |crapper|
  json.extract! crapper, :id, :city, :district, :name, :address
  json.url crapper_url(crapper, format: :json)
end
