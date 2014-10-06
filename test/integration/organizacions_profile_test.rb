require 'test_helper'

class OrganizacionsProfileTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  include ApplicationHelper
  
  def setup
  	@organizacion = organizacions(:sistemas)
  end

  test "profile display en organizacion" do
    get organizacion_path(@organizacion)
    assert_select 'title', @organizacion.nombre_organizacion
    assert_match @organizacion.nombre_organizacion, response.body
    assert_match @organizacion.objetivos.count.to_s, response.body
    assert_select 'div.pagination'
    @organizacion.objetivos.paginate(page: 1).each do |objetivo|
      assert_match objetivo.nombre_objetivo, response.body
    end
  end

end
