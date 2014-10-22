class AddFoodMenuIdToFoodMenusOrders < ActiveRecord::Migration
  def change
    add_column :food_menus_orders, :food_menu_id, :integer
  end
end
