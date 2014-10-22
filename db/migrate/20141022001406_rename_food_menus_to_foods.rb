class RenameFoodMenusToFoods < ActiveRecord::Migration
  def change
  	rename_table :food_menus, :foods
  end
end
