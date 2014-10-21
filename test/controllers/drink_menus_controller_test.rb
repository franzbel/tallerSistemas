require 'test_helper'

class DrinkMenusControllerTest < ActionController::TestCase
  setup do
    @drink_menu = drink_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drink_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drink_menu" do
    assert_difference('DrinkMenu.count') do
      post :create, drink_menu: { description: @drink_menu.description, name: @drink_menu.name, photo: @drink_menu.photo, price: @drink_menu.price }
    end

    assert_redirected_to drink_menu_path(assigns(:drink_menu))
  end

  test "should show drink_menu" do
    get :show, id: @drink_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drink_menu
    assert_response :success
  end

  test "should update drink_menu" do
    patch :update, id: @drink_menu, drink_menu: { description: @drink_menu.description, name: @drink_menu.name, photo: @drink_menu.photo, price: @drink_menu.price }
    assert_redirected_to drink_menu_path(assigns(:drink_menu))
  end

  test "should destroy drink_menu" do
    assert_difference('DrinkMenu.count', -1) do
      delete :destroy, id: @drink_menu
    end

    assert_redirected_to drink_menus_path
  end
end
