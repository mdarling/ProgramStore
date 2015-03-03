require 'test_helper'

class DegreePlansControllerTest < ActionController::TestCase
  setup do
    @degree_plan = degree_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:degree_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create degree_plan" do
    assert_difference('DegreePlan.count') do
      post :create, degree_plan: { academic_program_id: @degree_plan.academic_program_id, degree_plan: @degree_plan.degree_plan, type_of_program: @degree_plan.type_of_program }
    end

    assert_redirected_to degree_plan_path(assigns(:degree_plan))
  end

  test "should show degree_plan" do
    get :show, id: @degree_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @degree_plan
    assert_response :success
  end

  test "should update degree_plan" do
    patch :update, id: @degree_plan, degree_plan: { academic_program_id: @degree_plan.academic_program_id, degree_plan: @degree_plan.degree_plan, type_of_program: @degree_plan.type_of_program }
    assert_redirected_to degree_plan_path(assigns(:degree_plan))
  end

  test "should destroy degree_plan" do
    assert_difference('DegreePlan.count', -1) do
      delete :destroy, id: @degree_plan
    end

    assert_redirected_to degree_plans_path
  end
end
