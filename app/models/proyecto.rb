class Proyecto < ActiveRecord::Base
  #Entidad relacion
  has_many :tareas
  has_many :users, :through => :membresia
  has_many :membresia

  #Validaciones
  validates_presence_of :nombre

end
