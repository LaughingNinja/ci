require 'test_helper'

class RevenueEventsControllerTest < ActionController::TestCase
  setup do
    @revenue_event = revenue_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:revenue_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create revenue_event" do
    assert_difference('RevenueEvent.count') do
      post :create, :revenue_event => @revenue_event.attributes
    end

    assert_redirected_to revenue_event_path(assigns(:revenue_event))
  end

  test "should show revenue_event" do
    get :show, :id => @revenue_event.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @revenue_event.to_param
    assert_response :success
  end

  test "should update revenue_event" do
    put :update, :id => @revenue_event.to_param, :revenue_event => @revenue_event.attributes
    assert_redirected_to revenue_event_path(assigns(:revenue_event))
  end

  test "should destroy revenue_event" do
    assert_difference('RevenueEvent.count', -1) do
      delete :destroy, :id => @revenue_event.to_param
    end

    assert_redirected_to revenue_events_path
  end
end
