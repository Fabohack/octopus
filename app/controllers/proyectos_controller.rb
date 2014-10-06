class ProyectosController < ApplicationController

  before_filter :Verificar_Administrador, :only => [:create, :destroy, :new, :edit]

  # GET /proyectos
  # GET /proyectos.json
  def index
    @proyectos = Proyecto.all
    #if current_user.role == 2
    #  @proyectos = Proyecto.all
    #else
    #  @proyectos = current_user.proyectos
    #  if @proyectos.count == 1
    #    redirecting = 1
    #    redirect_to proyecto_path(@proyectos.first)
    #  end
    #end
    #if redirecting.nil?
    #  respond_to do |format|
    #    format.html # index.html.erb
    #    format.json { render json: @proyectos }
    #  end
    #end
  end

  # GET /proyectos/1
  # GET /proyectos/1.json
  def show
    @proyecto = Proyecto.find(params[:id] || params[:proyecto_id])
    #if current_user.role == 2
    #  @proyecto = Proyecto.find(params[:id] || params[:proyecto_id])
    #else
    #  @proyecto = current_user.proyectos.find(params[:id] || params[:proyecto_id])
    #end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proyecto }
    end
  end

  # GET /proyectos/new
  def new
    @proyecto = Proyecto.new
  end

  # GET /proyectos/1/edit
  def edit
    @proyecto = Proyecto.find(params[:id])
  end

  # POST /proyectos
  # POST /proyectos.json
  def create
    @proyecto = Proyecto.new(proyecto_params)

    respond_to do |format|
      if @proyecto.save
        format.html { redirect_to @proyecto, notice: 'Proyecto was successfully created.' }
        format.json { render :show, status: :created, location: @proyecto }
      else
        format.html { render :new }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyectos/1
  # PATCH/PUT /proyectos/1.json
  def update
    respond_to do |format|
      if @proyecto.update(proyecto_params)
        format.html { redirect_to @proyecto, notice: 'Proyecto fue actualizado correctamente' }
        format.json { render :show, status: :ok, location: @proyecto }
      else
        format.html { render :edit }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyectos/1
  # DELETE /proyectos/1.json
  def destroy
    @proyecto.destroy
    respond_to do |format|
      format.html { redirect_to proyectos_url, notice: 'Proyecto fue eliminado correctamente' }
      format.json { head :no_content }
    end
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def proyecto_params
    params.require(:proyecto).permit(:nombre, :descripcion, :presupuesto, :es_estrategico)
  end
end
