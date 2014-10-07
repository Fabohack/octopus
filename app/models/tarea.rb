class Tarea < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => "usuario_id"

  #Validaciones

  validates :descripcion, length: { in: 8..255 , message: "Debe tener entre 8 y 255 caracteres"}

  validates :complejidad, :numericality => {only_integer: true,:greater_than => 0, :less_than => 4}

  validates :puntuacion,:numericality => { only_integer: true,:greater_than => 0, :less_than => 11}


end
