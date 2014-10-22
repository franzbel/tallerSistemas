class CreateFoodMenusOrders < ActiveRecord::Migration
  def change
    create_table :food_menus_orders, :id => false do |t|
    	t.references :food_menus
    	t.references :orders
    end
  end
  def self.down
  	drop_table :food_menus_orders
  end
end
