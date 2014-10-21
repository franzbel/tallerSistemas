require 'test_helper'

class FoodMenusControllerTest < ActionController::TestCase
  setup do
    @food_menu = food_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_menu" do
    assert_difference('FoodMenu.count') do
      post :create, food_menu: { description: @food_menu.description, name: @food_menu.name, photo: @food_menu.photo, price: @food_menu.price }
    end

    assert_redirected_to food_menu_path(assigns(:food_menu))
  end

  test "should show food_menu" do
    get :show, id: @food_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_menu
    assert_response :success
  end

  test "should update food_menu" do
    patch :update, id: @food_menu, food_menu: { description: @food_menu.description, name: @food_menu.name, photo: @food_menu.photo, price: @food_menu.price }
    assert_redirected_to food_menu_path(assigns(:food_menu))
  end

  test "should destroy food_menu" do
    assert_difference('FoodMenu.count', -1) do
      delete :destroy, id: @food_menu
    end

    assert_redirected_to food_menus_path
  end
end
