require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { co_or_prerequisite_array: @course.co_or_prerequisite_array, co_or_prerequisite_string: @course.co_or_prerequisite_string, corequisite_array: @course.corequisite_array, corequisite_string: @course.corequisite_string, credits: @course.credits, description: @course.description, institutional_entity_id: @course.institutional_entity_id, number: @course.number, prerequisite_array: @course.prerequisite_array, prerequisite_string: @course.prerequisite_string, semester_offering: @course.semester_offering, title: @course.title }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { co_or_prerequisite_array: @course.co_or_prerequisite_array, co_or_prerequisite_string: @course.co_or_prerequisite_string, corequisite_array: @course.corequisite_array, corequisite_string: @course.corequisite_string, credits: @course.credits, description: @course.description, institutional_entity_id: @course.institutional_entity_id, number: @course.number, prerequisite_array: @course.prerequisite_array, prerequisite_string: @course.prerequisite_string, semester_offering: @course.semester_offering, title: @course.title }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
