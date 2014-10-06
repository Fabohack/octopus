class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  protect_from_forgery
  before_filter :authenticate_user!

  #aqui verificacmos en ingreso o no de los usuarios

  def Verificar_Administrador
    if current_user.role == 1 or current_user.role == 2
      flash[:error] = "No tiene permisos."
      redirect_to "/"
    end
  end
end
