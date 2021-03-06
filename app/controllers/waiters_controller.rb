class WaitersController < ApplicationController
	def ayuda_index
		@tables = Table.all
		@numero_notificaciones=0	
		@tables.each do |mesa| 
          pedidos = mesa.orders
            pedidos.each do |pedido|
              if (pedido.state=="comida lista" || pedido.state=="bebida lista")
                @numero_notificaciones=@numero_notificaciones+1;
      		  end
            end
      	end
	end
	def notificaciones
		@tables = Table.all	

		@numero_notificaciones=0	
		@tables.each do |mesa| 
          pedidos = mesa.orders
            pedidos.each do |pedido|
              if (pedido.state=="comida lista" || pedido.state=="bebida lista")
                @numero_notificaciones=@numero_notificaciones+1;
      		  end
            end
      	end
		#render text: @tables.first.id
	end
	def index
		@tables = Table.all
		@numero_notificaciones=0	
		@tables.each do |mesa| 
          pedidos = mesa.orders
            pedidos.each do |pedido|
              if (pedido.state=="comida lista" || pedido.state=="bebida lista")
                @numero_notificaciones=@numero_notificaciones+1;
      		  end
            end
      	end

	end

	
	def opciones
		@mesa=Table.find(params[:id])
		@tables = Table.all	
		@numero_notificaciones=0	
		@tables.each do |mesa| 
          pedidos = mesa.orders
            pedidos.each do |pedido|
              if (pedido.state=="comida lista" || pedido.state=="bebida lista")
                @numero_notificaciones=@numero_notificaciones+1;
      		  end
            end
      	end
	end

	def pedido_mesa
		@pedido_mesa=Order.where('state=? OR state=? OR state=?',  'en proceso', 'comida lista', 'bebida lista').where(:table_id => params[:id])
		@tables = Table.all	
		@numero_notificaciones=0	
		@tables.each do |mesa| 
          pedidos = mesa.orders
            pedidos.each do |pedido|
              if (pedido.state=="comida lista" || pedido.state=="bebida lista")
                @numero_notificaciones=@numero_notificaciones+1;
      		  end
            end
      	end
		
	end
	def edit
		@pedido=Order.where(:id => params[:id])
	end

	def cancelar
		@pedido=Order.find(params[:id])
		@pedido.delete
		redirect_to waiters_index_path
	end

	def update
		@pedido=Order.find(params[:id])
		@pedido.quantity = params[:cantidades].first.to_i
		@pedido.takeaway = params[:llevar].first
		@pedido.observation = params[:observacion].first
		@pedido.save
	  	redirect_to waiters_index_path
	end

	def table_params
      params.require(:order).permit(:cantidades)
    end
	

	def ocupar_mesa
		@mesa = Table.find(params[:id])
	  	@mesa.state = "ocupada"
	  	@mesa.save
	  	redirect_to waiters_index_path
	end
	def take_order
	  	@mesa=Table.find(params[:id])
	  	@comidas = FoodMenu.all
	  	@tables = Table.all
		@numero_notificaciones=0	
		@tables.each do |mesa| 
          pedidos = mesa.orders
            pedidos.each do |pedido|
              if (pedido.state=="comida lista" || pedido.state=="bebida lista")
                @numero_notificaciones=@numero_notificaciones+1;
      		  end
            end
      	end
	end
	def take_drink_order
	  	@mesa=Table.find(params[:id])
	  	@comidas = DrinkMenu.all
	  	@tables = Table.all	

		@numero_notificaciones=0	
		@tables.each do |mesa| 
          pedidos = mesa.orders
            pedidos.each do |pedido|
              if (pedido.state=="comida lista" || pedido.state=="bebida lista")
                @numero_notificaciones=@numero_notificaciones+1;
      		  end
            end
      	end
  	end

	def create_order_drink
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
	  	if  !params[:comida_ids].nil?
	  	params[:comida_ids].each do |f|
	  		
	  		@comida=DrinkMenu.where(:id => f)

	  		@order = Order.new
	  		@order.quantity = arreglo[cont]
	  		@order.table_id = params[:mesa_ids].first.to_i
	  		@order.state = "en proceso"
	      	@order.takeaway = arreglo2[cont]
	      	@order.observation=arreglo_observaciones[cont]
	  		@order.save
	  		cont =cont + 1
	  		@order.drink_menus<<@comida
	  	end
	  end
	  	redirect_to waiters_index_path
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
	  	if	!params[:comida_ids].nil? 
	  	
	  	params[:comida_ids].each do |f|
	  		
	  		@comida=FoodMenu.where(:id => f)

	  		@order = Order.new
	  		@order.quantity = arreglo[cont]
	  		@order.table_id = params[:mesa_ids].first.to_i
	  		@order.state = "en proceso"
	      	@order.takeaway = arreglo2[cont]
	      	@order.observation=arreglo_observaciones[cont]
	  		@order.save
	  		cont =cont + 1
	  		@order.food_menus<<@comida
	  	end
	  end
	  	redirect_to waiters_index_path
	end
def serving_food
  	@order = Order.find(params[:id])
  	@order.state="servido"
  	@order.save
    redirect_to pedido_mesa_path(@order.table_id)
  	#redirect_to waiters_index_path
  end
	def set_table
	  	@mesa = Table.find(params[:id])
	  	@mesa.state = "limpieza"
	  	@mesa.save

	  	redirect_to waiters_index_path
	end
end