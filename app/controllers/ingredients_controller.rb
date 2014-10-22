class IngredientsController < ApplicationController
skip_before_filter :verify_autenticity_token

	def create
		@recipe=Recipe.find(params[:recipe_id]) 
		@recipe.ingredients.create(ingredients_params) 

		redirect_to @recipe 
	end

	private
		def ingredients_params
			params.require(:ingredient).permit(:ingrediente)
		end
	



end

	
