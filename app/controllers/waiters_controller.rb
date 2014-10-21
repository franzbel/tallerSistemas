class WaitersController < ApplicationController
	def index
		@tables = Table.all	
	end

	def take_order
	  	@mesa=Table.find(params[:id])
	  	@comidas = FoodMenu.all
	end

	def create_order
	  	#render text: "holas"
	  	#render text: params[:cantidad_ids]
	  	#render text: params[:comida_ids]
	  	#render text: params[:cantidades]
	  	#render text: @comida.name
	  	arreglo=[]
	    arreglo2=[]
	    arreglo_observaciones=[]
	    i=0
	  	params[:cantidades].each do|c|
	  		if c >"0" 
	  			arreglo<<c
	        	arreglo2<<params[:llevar][i]
	        	arreglo_observaciones<<params[:observacion][i]
	  		end
	      	i=i+1
	  	end
	    #arreglo2=[]
	    #params[:llevar].each do|c|
	    #    arreglo2<<c
	    #end
	  	cont=0
	  	#render text: arreglo2
	  	@mesa = Table.find(params[:mesa_ids].first.to_i)
	  	@mesa.state = "ocupada"
	  	@mesa.save
	  	
	  	params[:comida_ids].each do |f|
	  		
	  		@comida=Food.where(:id => f)

	  		@order = Order.new
	  		@order.quantity = arreglo[cont]
	  		@order.table_id = params[:mesa_ids].first.to_i
	  		@order.state = "en proceso"
	      	@order.takeaway = arreglo2[cont]
	      	@order.observation=arreglo_observaciones[cont]
	  		@order.save
	  		cont =cont + 1
	  		@order.foods<<@comida
	  	end
	  	redirect_to waiters_index_path
	end
	def set_table
	  	@mesa = Table.find(params[:id])
	  	@mesa.state = "Limpieza"
	  	@mesa.save
	  	redirect_to waiters_index_path
	end
end