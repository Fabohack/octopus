class Tarea < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => "usuario_id"

end
