class CreateMembresia < ActiveRecord::Migration
  def change
    create_table :membresia do |t|
      t.references :user, index: true
      t.references :proyecto, index: true

      t.timestamps
    end
  end
end
