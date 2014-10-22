class RenameFoodsToFoodMenus < ActiveRecord::Migration
  def change
  	rename_table :foods, :food_menus
  end
end
