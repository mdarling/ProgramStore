require 'test_helper'

class MetaRequirementsControllerTest < ActionController::TestCase
  setup do
    @meta_requirement = meta_requirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meta_requirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meta_requirement" do
    assert_difference('MetaRequirement.count') do
      post :create, meta_requirement: { description: @meta_requirement.description, institutional_entity_id: @meta_requirement.institutional_entity_id, value: @meta_requirement.value }
    end

    assert_redirected_to meta_requirement_path(assigns(:meta_requirement))
  end

  test "should show meta_requirement" do
    get :show, id: @meta_requirement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meta_requirement
    assert_response :success
  end

  test "should update meta_requirement" do
    patch :update, id: @meta_requirement, meta_requirement: { description: @meta_requirement.description, institutional_entity_id: @meta_requirement.institutional_entity_id, value: @meta_requirement.value }
    assert_redirected_to meta_requirement_path(assigns(:meta_requirement))
  end

  test "should destroy meta_requirement" do
    assert_difference('MetaRequirement.count', -1) do
      delete :destroy, id: @meta_requirement
    end

    assert_redirected_to meta_requirements_path
  end
end
