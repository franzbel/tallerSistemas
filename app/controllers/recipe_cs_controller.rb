class RecipeCsController < ApplicationController
  before_action :set_recipe_c, only: [:show, :edit, :update, :destroy]

  # GET /recipe_cs
  # GET /recipe_cs.json
  def index
    @recipe_cs = RecipeC.all
    @ingredient_cs = IngredientC.all
  end


def create_recipec
      arreglo=[]
      params[:ingredientc_ids].each do |f|
        
        @ingredient=IngredientC.where(:id => f)
        @recipe_c.list<<@ingredient.name

     #   arreglo<<@ingredient.name
      end
      redirect_to new_recipe_c_path
#render text: arreglo
#      render text: params[:ingredientc_ids]
  end





  # GET /recipe_cs/1
  # GET /recipe_cs/1.json
  def show
  end

  # GET /recipe_cs/new
  def new
    @ingredient_cs = IngredientC.all
    @recipe_c = RecipeC.new
  end

  # GET /recipe_cs/1/edit
  def edit
    @ingredient_cs = IngredientC.all
  end

  # POST /recipe_cs
  # POST /recipe_cs.json
  def create
    @recipe_c = RecipeC.new(recipe_c_params)
    @ingredientes = params[:ingredient_c_id]


    respond_to do |format|
      if @recipe_c.save
         @ingredientes.each do |i|
            RecipeIngredient.create(:recipe_c_id => @recipe_c.id, :ingredient_c_id => i)
         end 
        format.html { redirect_to @recipe_c, notice: 'Receta creada con exito.' }
        format.json { render action: 'show', status: :created, location: @recipe_c }
      else
        format.html { render action: 'new' }
        format.json { render json: @recipe_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_cs/1
  # PATCH/PUT /recipe_cs/1.json
  def update
    respond_to do |format|
      if @recipe_c.update(recipe_c_params)
        format.html { redirect_to @recipe_c, notice: 'Receta actualizada.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recipe_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_cs/1
  # DELETE /recipe_cs/1.json
  def destroy
    @recipe_c.destroy
    respond_to do |format|
      format.html { redirect_to recipe_cs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_c
      @recipe_c = RecipeC.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_c_params
      params.require(:recipe_c).permit(:name, :preparation, recipe_ingredients_attributes: [:id, :ingredient_c_id, :repice_c_id, :_destroy])
    end
end
