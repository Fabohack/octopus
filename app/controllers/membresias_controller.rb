class MembresiasController < ApplicationController
  before_filter :Verificar_Administrador

  def index
    @proyecto = Proyecto.find(params[:proyecto_id])
    @membresia_list = @proyecto.membresias
    @membresias = Membresia.new
  end

  def create
    @proyecto = Proyecto.find(params[:proyecto_id])
    @membresias = @proyecto.membresias.create(params[:membresias])
    flash[:success] = "User was added to the project."
    redirect_to proyecto_membresia_path(@proyecto)
  end

  def destroy
    @proyecto = Proyecto.find(params[:proyecto_id])
    @membresias = @proyecto.membresias.find(params[:id]).destroy
    flash[:success] = "User was removed from the project."
    redirect_to proyecto_membresia_path(@proyecto)
  end

end
