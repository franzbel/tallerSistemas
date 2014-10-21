class DrinkMenusController < ApplicationController
  before_action :set_drink_menu, only: [:show, :edit, :update, :destroy]

  # GET /drink_menus
  # GET /drink_menus.json
  def index
    @drink_menus = DrinkMenu.all
  end

  # GET /drink_menus/1
  # GET /drink_menus/1.json
  def show
  end

  # GET /drink_menus/new
  def new
    @drink_menu = DrinkMenu.new
  end

  # GET /drink_menus/1/edit
  def edit
  end

  # POST /drink_menus
  # POST /drink_menus.json
  def create
    @drink_menu = DrinkMenu.new(drink_menu_params)

    respond_to do |format|
      if @drink_menu.save
        format.html { redirect_to @drink_menu, notice: 'Drink menu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @drink_menu }
      else
        format.html { render action: 'new' }
        format.json { render json: @drink_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drink_menus/1
  # PATCH/PUT /drink_menus/1.json
  def update
    respond_to do |format|
      if @drink_menu.update(drink_menu_params)
        format.html { redirect_to @drink_menu, notice: 'Drink menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @drink_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drink_menus/1
  # DELETE /drink_menus/1.json
  def destroy
    @drink_menu.destroy
    respond_to do |format|
      format.html { redirect_to drink_menus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drink_menu
      @drink_menu = DrinkMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drink_menu_params
      params.require(:drink_menu).permit(:name, :photo, :description, :price)
    end
end
