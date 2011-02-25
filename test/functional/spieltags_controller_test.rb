require 'test_helper'

class SpieltagsControllerTest < ActionController::TestCase
  setup do
    @spieltag = spieltags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spieltags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spieltag" do
    assert_difference('Spieltag.count') do
      post :create, :spieltag => @spieltag.attributes
    end

    assert_redirected_to spieltag_path(assigns(:spieltag))
  end

  test "should show spieltag" do
    get :show, :id => @spieltag.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @spieltag.to_param
    assert_response :success
  end

  test "should update spieltag" do
    put :update, :id => @spieltag.to_param, :spieltag => @spieltag.attributes
    assert_redirected_to spieltag_path(assigns(:spieltag))
  end

  test "should destroy spieltag" do
    assert_difference('Spieltag.count', -1) do
      delete :destroy, :id => @spieltag.to_param
    end

    assert_redirected_to spieltags_path
  end
end
