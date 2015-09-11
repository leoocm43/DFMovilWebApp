json.array!(@transportes) do |transporte|
  json.extract! transporte, :id, :parada, :ruta, :organismo, :latitude, :longitude
  json.url transporte_url(transporte, format: :json)
end
