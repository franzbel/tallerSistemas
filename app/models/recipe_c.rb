class RecipeC < ActiveRecord::Base
	
	has_many :recipe_ingredients
	accepts_nested_attributes_for :recipe_ingredients, :allow_destroy => true
	validates :name, presence: {:message => "Campo obligatorio Ingrese nombre"}
	#validates :recipe_ingredients , presence: {:message => "Campo obligatorio Ingrese ingredientes"}
	validates :preparation , presence: {:message => "Campo obligatorio Ingrese preparacion"}
end
