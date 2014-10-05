json.array!(@objetivos) do |objetivo|
  json.extract! objetivo, :id, :nombre_objetivo
  json.url objetivo_url(objetivo, format: :json)
end
