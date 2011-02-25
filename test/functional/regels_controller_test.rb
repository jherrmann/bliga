require 'test_helper'

class RegelsControllerTest < ActionController::TestCase
  setup do
    @regel = regels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regel" do
    assert_difference('Regel.count') do
      post :create, :regel => @regel.attributes
    end

    assert_redirected_to regel_path(assigns(:regel))
  end

  test "should show regel" do
    get :show, :id => @regel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @regel.to_param
    assert_response :success
  end

  test "should update regel" do
    put :update, :id => @regel.to_param, :regel => @regel.attributes
    assert_redirected_to regel_path(assigns(:regel))
  end

  test "should destroy regel" do
    assert_difference('Regel.count', -1) do
      delete :destroy, :id => @regel.to_param
    end

    assert_redirected_to regels_path
  end
end
