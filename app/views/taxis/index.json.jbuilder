json.array!(@taxis) do |taxi|
  json.extract! taxi, :id, :nombreBase, :nombreTitular, :latitud, :longitud
  json.url taxi_url(taxi, format: :json)
end
