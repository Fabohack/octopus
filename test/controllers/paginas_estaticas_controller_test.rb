require 'test_helper'

class PaginasEstaticasControllerTest < ActionController::TestCase
  test "should get Inicio" do
    get :Inicio
    assert_response :success
  end

  test "should get Ayuda" do
    get :Ayuda
    assert_response :success
  end

end
