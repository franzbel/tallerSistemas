class BartendersController < ApplicationController
  def index
 	  @pedidos = Order.where(:state => 'en proceso')
 	  #@comidas = @pedidos.foods
  end
   def delivery
    @pedidos = Order.find(params[:id])
    @pedidos.update_columns(:state =>"bebida lista") 
    redirect_to bartenders_index_path
  end
end
