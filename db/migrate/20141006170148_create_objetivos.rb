class CreateObjetivos < ActiveRecord::Migration
  def change
    create_table :objetivos do |t|
      t.text :nombre_objetivo
      t.references :organizacion, index: true

      t.timestamps null: false
    end
    add_index :objetivos, [:organizacion_id, :created_at]
  end
end
