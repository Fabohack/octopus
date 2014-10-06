class OrganizacionsController < ApplicationController
	

	def show
    	@organizacion = Organizacion.find(params[:id])
		@objetivos = @organizacion.objetivos.paginate(page: params[:page])
  	end
end
