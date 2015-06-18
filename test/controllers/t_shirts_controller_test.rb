require 'test_helper'

class TShirtsControllerTest < ActionController::TestCase
  setup do
    @t_shirt = t_shirts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_shirts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_shirt" do
    assert_difference('TShirt.count') do
      post :create, t_shirt: { availability: @t_shirt.availability, brand: @t_shirt.brand, description: @t_shirt.description, designer: @t_shirt.designer, name: @t_shirt.name, price: @t_shirt.price, size: @t_shirt.size, string: @t_shirt.string }
    end

    assert_redirected_to t_shirt_path(assigns(:t_shirt))
  end

  test "should show t_shirt" do
    get :show, id: @t_shirt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_shirt
    assert_response :success
  end

  test "should update t_shirt" do
    patch :update, id: @t_shirt, t_shirt: { availability: @t_shirt.availability, brand: @t_shirt.brand, description: @t_shirt.description, designer: @t_shirt.designer, name: @t_shirt.name, price: @t_shirt.price, size: @t_shirt.size, string: @t_shirt.string }
    assert_redirected_to t_shirt_path(assigns(:t_shirt))
  end

  test "should destroy t_shirt" do
    assert_difference('TShirt.count', -1) do
      delete :destroy, id: @t_shirt
    end

    assert_redirected_to t_shirts_path
  end
end
