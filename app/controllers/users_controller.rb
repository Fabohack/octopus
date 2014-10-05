class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :admin_only, :except => :show

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless current_user.admin?
      unless @user == current_user
        redirect_to :back, :alert => "Accesso Denegado."
      end
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "Usuario Actualizado."
    else
      redirect_to users_path, :alert => "No se puede actualizar el Usuario."
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "Usuario Eliminado."
  end

  private

  def admin_only
    unless current_user.admin?
      redirect_to :back, :alert => "Acceso Denegado."
    end
  end

  def secure_params
    params.require(:user).permit(:role)
  end

end
