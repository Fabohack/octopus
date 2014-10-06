class Objetivo < ActiveRecord::Base
  belongs_to :organizacion
  default_scope -> {order('created_at DESC')}
  validates :organizacion_id, presence: true
  validates :nombre_objetivo, presence: true, length: { maximum: 150 }
end
