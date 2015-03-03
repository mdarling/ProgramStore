require 'test_helper'

class InstitutionalEntitiesControllerTest < ActionController::TestCase
  setup do
    @institutional_entity = institutional_entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institutional_entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institutional_entity" do
    assert_difference('InstitutionalEntity.count') do
      post :create, institutional_entity: { acronym: @institutional_entity.acronym, grad_programs: @institutional_entity.grad_programs, level: @institutional_entity.level, name: @institutional_entity.name, org_code: @institutional_entity.org_code, parent_entity_id: @institutional_entity.parent_entity_id, type: @institutional_entity.type, undergrad_programs: @institutional_entity.undergrad_programs, url: @institutional_entity.url }
    end

    assert_redirected_to institutional_entity_path(assigns(:institutional_entity))
  end

  test "should show institutional_entity" do
    get :show, id: @institutional_entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institutional_entity
    assert_response :success
  end

  test "should update institutional_entity" do
    patch :update, id: @institutional_entity, institutional_entity: { acronym: @institutional_entity.acronym, grad_programs: @institutional_entity.grad_programs, level: @institutional_entity.level, name: @institutional_entity.name, org_code: @institutional_entity.org_code, parent_entity_id: @institutional_entity.parent_entity_id, type: @institutional_entity.type, undergrad_programs: @institutional_entity.undergrad_programs, url: @institutional_entity.url }
    assert_redirected_to institutional_entity_path(assigns(:institutional_entity))
  end

  test "should destroy institutional_entity" do
    assert_difference('InstitutionalEntity.count', -1) do
      delete :destroy, id: @institutional_entity
    end

    assert_redirected_to institutional_entities_path
  end
end
