class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin] #user -> 1 vip ->2 admin ->3 en la tabla de base de datos
  after_initialize :set_role_predeterminado, :if => :new_record?
  #Usuario tienes muchos proyectos atravez de

  has_many :proyectos, :through => :membresia
  has_many :membresia

  def set_role_predeterminado
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
