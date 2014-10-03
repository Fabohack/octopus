json.array!(@tareas) do |tarea|
  json.extract! tarea, :id, :descripcion, :tiempo_limite, :complejidad, :puntuacion
  json.url tarea_url(tarea, format: :json)
end
