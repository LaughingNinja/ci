require 'test_helper'

class ProjectRevenueEventsControllerTest < ActionController::TestCase
  setup do
    @project_revenue_event = project_revenue_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_revenue_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_revenue_event" do
    assert_difference('ProjectRevenueEvent.count') do
      post :create, :project_revenue_event => @project_revenue_event.attributes
    end

    assert_redirected_to project_revenue_event_path(assigns(:project_revenue_event))
  end

  test "should show project_revenue_event" do
    get :show, :id => @project_revenue_event.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project_revenue_event.to_param
    assert_response :success
  end

  test "should update project_revenue_event" do
    put :update, :id => @project_revenue_event.to_param, :project_revenue_event => @project_revenue_event.attributes
    assert_redirected_to project_revenue_event_path(assigns(:project_revenue_event))
  end

  test "should destroy project_revenue_event" do
    assert_difference('ProjectRevenueEvent.count', -1) do
      delete :destroy, :id => @project_revenue_event.to_param
    end

    assert_redirected_to project_revenue_events_path
  end
end
