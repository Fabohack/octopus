class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.text :descripcion
      t.datetime :tiempo_limite
      t.integer :complejidad
      t.integer :puntuacion

      t.timestamps
    end
  end
end
