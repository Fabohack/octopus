class CreateMigrations < ActiveRecord::Migration
  def change
    create_table :migrations do |t|
      t.string :AddOrganizacionToObjetivos
      t.references :organizacion, index: true

      t.timestamps
    end
  end
end
