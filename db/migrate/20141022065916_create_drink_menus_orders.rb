class CreateDrinkMenusOrders < ActiveRecord::Migration
  def change
    create_table :drink_menus_orders, :id => false do |t|
    	t.references :drink_menu
    	t.references :order
    end
  end
  def self_down
  	drop_table :drink_menus_orders
  end
end
