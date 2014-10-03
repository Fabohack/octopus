class CreateProyectoUsers < ActiveRecord::Migration
  def change
    create_table :proyecto_users do |t|

      t.timestamps
    end
  end
end
