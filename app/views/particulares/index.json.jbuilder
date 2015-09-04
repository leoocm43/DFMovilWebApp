json.array!(@particulares) do |particulare|
  json.extract! particulare, :id, :placa, :tenencias, :infracciones, :verificaciones
  json.url particulare_url(particulare, format: :json)
end
