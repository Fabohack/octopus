require 'test_helper'

class OrganizacionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup 
  	@organizacion = Organizacion.new(nombre_organizacion: "Organizacion ejemplo")
  end

  test "objetivos asociados deben destruirse" do 
  	@organizacion.save
  	@organizacion.objetivos.create!(nombre_objetivo: "Objetivo lorem ipsum")
  	assert_difference 'Objetivo.count', -1 do
  		@organizacion.destroy
  	end
  end
end
