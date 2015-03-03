require 'test_helper'

class DegreeRequirementTypesControllerTest < ActionController::TestCase
  setup do
    @degree_requirement_type = degree_requirement_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:degree_requirement_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create degree_requirement_type" do
    assert_difference('DegreeRequirementType.count') do
      post :create, degree_requirement_type: { degree_requirement_id: @degree_requirement_type.degree_requirement_id, type_of_degree_requirement: @degree_requirement_type.type_of_degree_requirement }
    end

    assert_redirected_to degree_requirement_type_path(assigns(:degree_requirement_type))
  end

  test "should show degree_requirement_type" do
    get :show, id: @degree_requirement_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @degree_requirement_type
    assert_response :success
  end

  test "should update degree_requirement_type" do
    patch :update, id: @degree_requirement_type, degree_requirement_type: { degree_requirement_id: @degree_requirement_type.degree_requirement_id, type_of_degree_requirement: @degree_requirement_type.type_of_degree_requirement }
    assert_redirected_to degree_requirement_type_path(assigns(:degree_requirement_type))
  end

  test "should destroy degree_requirement_type" do
    assert_difference('DegreeRequirementType.count', -1) do
      delete :destroy, id: @degree_requirement_type
    end

    assert_redirected_to degree_requirement_types_path
  end
end
