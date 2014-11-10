class IngredientC < ActiveRecord::Base
  has_many :recipe_ingredients
  belongs_to :recipe_ingredients, inverse_of: :ingredient_cs
  validates :name, presence: {:message => "Campo obligatorio Ingrese nombre"}
end
