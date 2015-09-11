json.array!(@sitios) do |sitio|
  json.extract! sitio, :id, :NombreBase, :NombreTitular, :latitude, :longitude
  json.url sitio_url(sitio, format: :json)
end
