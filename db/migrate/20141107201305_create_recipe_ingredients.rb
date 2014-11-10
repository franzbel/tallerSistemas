class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe_c, index: true
      t.references :ingredient_c, index: true

      t.timestamps
    end
  end
end
