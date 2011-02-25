require 'test_helper'

class PaarungsControllerTest < ActionController::TestCase
  setup do
    @paarung = paarungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paarungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paarung" do
    assert_difference('Paarung.count') do
      post :create, :paarung => @paarung.attributes
    end

    assert_redirected_to paarung_path(assigns(:paarung))
  end

  test "should show paarung" do
    get :show, :id => @paarung.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @paarung.to_param
    assert_response :success
  end

  test "should update paarung" do
    put :update, :id => @paarung.to_param, :paarung => @paarung.attributes
    assert_redirected_to paarung_path(assigns(:paarung))
  end

  test "should destroy paarung" do
    assert_difference('Paarung.count', -1) do
      delete :destroy, :id => @paarung.to_param
    end

    assert_redirected_to paarungs_path
  end
end
