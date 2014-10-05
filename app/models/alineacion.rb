class Alineacion < ActiveRecord::Base
  belongs_to :proyecto
  belongs_to :objetivo
end
