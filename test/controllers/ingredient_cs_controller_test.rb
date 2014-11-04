require 'test_helper'

class IngredientCsControllerTest < ActionController::TestCase
  setup do
    @ingredient_c = ingredient_cs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredient_cs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredient_c" do
    assert_difference('IngredientC.count') do
      post :create, ingredient_c: { name: @ingredient_c.name, recipec_id: @ingredient_c.recipec_id }
    end

    assert_redirected_to ingredient_c_path(assigns(:ingredient_c))
  end

  test "should show ingredient_c" do
    get :show, id: @ingredient_c
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredient_c
    assert_response :success
  end

  test "should update ingredient_c" do
    patch :update, id: @ingredient_c, ingredient_c: { name: @ingredient_c.name, recipec_id: @ingredient_c.recipec_id }
    assert_redirected_to ingredient_c_path(assigns(:ingredient_c))
  end

  test "should destroy ingredient_c" do
    assert_difference('IngredientC.count', -1) do
      delete :destroy, id: @ingredient_c
    end

    assert_redirected_to ingredient_cs_path
  end
end
