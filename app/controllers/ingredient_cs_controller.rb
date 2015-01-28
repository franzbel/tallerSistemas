class IngredientCsController < ApplicationController
  before_action :set_ingredient_c, only: [:show, :edit, :update, :destroy]

  # GET /ingredient_cs
  # GET /ingredient_cs.json
  def index
    @ingredient_cs = IngredientC.all
  end

  # GET /ingredient_cs/1
  # GET /ingredient_cs/1.json
  def show
  end

  # GET /ingredient_cs/new
  def new
    @ingredient_c = IngredientC.new
  end

  # GET /ingredient_cs/1/edit
  def edit
  end

  # POST /ingredient_cs
  # POST /ingredient_cs.json
  def create
    @ingredient_c = IngredientC.new(ingredient_c_params)

    respond_to do |format|
      if @ingredient_c.save
        format.html { redirect_to @ingredient_c, notice: 'Ingrediente creado.' }
        format.json { render action: 'show', status: :created, location: @ingredient_c }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_cs/1
  # PATCH/PUT /ingredient_cs/1.json
  def update
    respond_to do |format|
      if @ingredient_c.update(ingredient_c_params)
        format.html { redirect_to @ingredient_c, notice: 'Ingrediente correctamente actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ingredient_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_cs/1
  # DELETE /ingredient_cs/1.json
  def destroy
    @ingredient_c.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_cs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_c
      @ingredient_c = IngredientC.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_c_params
      params.require(:ingredient_c).permit(:name, :recipec_id)
    end
end
