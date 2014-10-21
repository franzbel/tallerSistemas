class CreateFoodMenus < ActiveRecord::Migration
  def change
    create_table :food_menus do |t|
      t.string :name
      t.string :photo
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
