class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe_c
  belongs_to :ingredient_c
end
