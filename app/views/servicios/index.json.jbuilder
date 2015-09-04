json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :parada, :ruta, :organismo, :latitud, :longitud
  json.url servicio_url(servicio, format: :json)
end
