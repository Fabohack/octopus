class CreateObjetivos < ActiveRecord::Migration
  def change
    create_table :objetivos do |t|
      t.text :nombre_objetivo

      t.timestamps
    end
  end
end
