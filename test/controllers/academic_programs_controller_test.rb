require 'test_helper'

class AcademicProgramsControllerTest < ActionController::TestCase
  setup do
    @academic_program = academic_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academic_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academic_program" do
    assert_difference('AcademicProgram.count') do
      post :create, academic_program: { admission_requirements: @academic_program.admission_requirements, career_opportunities: @academic_program.career_opportunities, contact_information: @academic_program.contact_information, degree: @academic_program.degree, keywords: @academic_program.keywords, minimum_course_grade: @academic_program.minimum_course_grade, minimum_cumulative_gpa: @academic_program.minimum_cumulative_gpa, name: @academic_program.name, online: @academic_program.online, program_description: @academic_program.program_description, transfer_agreements: @academic_program.transfer_agreements, type: @academic_program.type }
    end

    assert_redirected_to academic_program_path(assigns(:academic_program))
  end

  test "should show academic_program" do
    get :show, id: @academic_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @academic_program
    assert_response :success
  end

  test "should update academic_program" do
    patch :update, id: @academic_program, academic_program: { admission_requirements: @academic_program.admission_requirements, career_opportunities: @academic_program.career_opportunities, contact_information: @academic_program.contact_information, degree: @academic_program.degree, keywords: @academic_program.keywords, minimum_course_grade: @academic_program.minimum_course_grade, minimum_cumulative_gpa: @academic_program.minimum_cumulative_gpa, name: @academic_program.name, online: @academic_program.online, program_description: @academic_program.program_description, transfer_agreements: @academic_program.transfer_agreements, type: @academic_program.type }
    assert_redirected_to academic_program_path(assigns(:academic_program))
  end

  test "should destroy academic_program" do
    assert_difference('AcademicProgram.count', -1) do
      delete :destroy, id: @academic_program
    end

    assert_redirected_to academic_programs_path
  end
end
