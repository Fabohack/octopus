class ObjetivosController < ApplicationController
	def create
	    @objetivo = current_user.objetivos.build(objetivos_params)
	    if @objetivo.save
	      flash[:success] = "Objetivo creado!"
	      redirect_to root_url
	    else
	      render 'visitors/index'
	    end
    end

    def index
    	
  	end

    private

	def objetivos_params
	    params.require(:objetivo).permit(:nombre_objetivo)
	end

end
