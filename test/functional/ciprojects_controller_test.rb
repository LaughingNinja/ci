require 'test_helper'

class CiprojectsControllerTest < ActionController::TestCase
  setup do
    @ciproject = ciprojects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ciprojects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ciproject" do
    assert_difference('Ciproject.count') do
      post :create, :ciproject => @ciproject.attributes
    end

    assert_redirected_to ciproject_path(assigns(:ciproject))
  end

  test "should show ciproject" do
    get :show, :id => @ciproject.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ciproject.to_param
    assert_response :success
  end

  test "should update ciproject" do
    put :update, :id => @ciproject.to_param, :ciproject => @ciproject.attributes
    assert_redirected_to ciproject_path(assigns(:ciproject))
  end

  test "should destroy ciproject" do
    assert_difference('Ciproject.count', -1) do
      delete :destroy, :id => @ciproject.to_param
    end

    assert_redirected_to ciprojects_path
  end
end
