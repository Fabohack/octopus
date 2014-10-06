class CreateOrganizacions < ActiveRecord::Migration
  def change
    create_table :organizacions do |t|
      t.string :nombre_organizacion

      t.timestamps
    end
  end
end
