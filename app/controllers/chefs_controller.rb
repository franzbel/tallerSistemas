class ChefsController < ApplicationController
  def index
    @pedidos = Order.where(:state => 'en proceso')
  end
  def delivery
    @pedidos = Order.find(params[:id])
    @pedidos.update_columns(:state =>"comida lista") 
    redirect_to chefs_index_path
  end
end
