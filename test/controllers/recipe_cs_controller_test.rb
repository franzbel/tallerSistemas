require 'test_helper'

class RecipeCsControllerTest < ActionController::TestCase
  setup do
    @recipe_c = recipe_cs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_cs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_c" do
    assert_difference('RecipeC.count') do
      post :create, recipe_c: { list: @recipe_c.list, name: @recipe_c.name, preparation: @recipe_c.preparation }
    end

    assert_redirected_to recipe_c_path(assigns(:recipe_c))
  end

  test "should show recipe_c" do
    get :show, id: @recipe_c
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_c
    assert_response :success
  end

  test "should update recipe_c" do
    patch :update, id: @recipe_c, recipe_c: { list: @recipe_c.list, name: @recipe_c.name, preparation: @recipe_c.preparation }
    assert_redirected_to recipe_c_path(assigns(:recipe_c))
  end

  test "should destroy recipe_c" do
    assert_difference('RecipeC.count', -1) do
      delete :destroy, id: @recipe_c
    end

    assert_redirected_to recipe_cs_path
  end
end
