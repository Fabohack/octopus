class Proyecto < ActiveRecord::Base
  #Entidad relacion
  has_many :tareas
  has_many :users, :through => :membresias
  has_many :membresias

  #Validaciones
  validates_presence_of :nombre

  validates :presupuesto, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0 }

  validates :descripcion, length: { in: 0..255 },allow_blank: true

end
