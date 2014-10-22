class AddOrderIdToFoodMenusOrders < ActiveRecord::Migration
  def change
    add_column :food_menus_orders, :order_id, :integer
  end
end
