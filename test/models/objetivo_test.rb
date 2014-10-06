require 'test_helper'

class ObjetivoTest < ActiveSupport::TestCase
  
  def setup
  	@organizacion = organizacions(:sistemas)
  	# Idiomaticamente incorrecto
  	# @objetivo = Objetivo.new(nombre_objetivo: "Lorem ipsum sinun oscus", organizacion_id: @organizacion.id)
  	@objetivo = @organizacion.objetivos.build(nombre_objetivo: "Lorem ipsum aguam perrum.")
  end

  test "objetivo debe ser válido" do
  	assert @objetivo.valid?
  end

  test "organizacion id debe estar presente" do
  	@objetivo.organizacion_id = nil
  	assert_not @objetivo.valid?
  end

  test 'nombre_objetivo debe estar presente' do
  	@objetivo.nombre_objetivo = ""
  	assert_not @objetivo.valid?
  end

  test 'nombre_objetivo no debe ser mas de 150 caracteres' do
  	@objetivo.nombre_objetivo = "x"*151
  	assert_not @objetivo.valid?
  end

  test "ordenar por el mas reciente primero" do
  	assert_equal Objetivo.first, objetivos(:reciente)
  end

end
