class Organizacion < ActiveRecord::Base
	has_many :objetivos, dependent: :destroy
end
