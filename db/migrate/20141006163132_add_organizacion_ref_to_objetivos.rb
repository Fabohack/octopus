class AddOrganizacionRefToObjetivos < ActiveRecord::Migration
  def change
    add_reference :objetivos, :organizacion, index: true
  end
end
