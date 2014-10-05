class CreateAlineacions < ActiveRecord::Migration
  def change
    create_table :alineacions do |t|
      t.references :objetivo, index: true
      t.references :proyecto, index: true

      t.timestamps
    end
  end
end
