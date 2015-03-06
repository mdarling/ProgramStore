class AcademicProgramsController < ApplicationController
  before_action :set_academic_program, only: [:show, :edit, :update, :destroy]

  # GET /academic_programs
  # GET /academic_programs.json
  def index
    @academic_programs = AcademicProgram.all
  end

  # GET /academic_programs/1
  # GET /academic_programs/1.json
  def show
  end

  # GET /academic_programs/new
  def new
    @academic_program = AcademicProgram.new
  end

  # GET /academic_programs/1/edit
  def edit
  end

  # POST /academic_programs
  # POST /academic_programs.json
  def create
    @academic_program = AcademicProgram.new(academic_program_params)

    respond_to do |format|
      if @academic_program.save
        format.html { redirect_to @academic_program, notice: 'Academic program was successfully created.' }
        format.json { render :show, status: :created, location: @academic_program }
      else
        format.html { render :new }
        format.json { render json: @academic_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /academic_programs/1
  # PATCH/PUT /academic_programs/1.json
  def update
    respond_to do |format|
      if @academic_program.update(academic_program_params)
        format.html { redirect_to @academic_program, notice: 'Academic program was successfully updated.' }
        format.json { render :show, status: :ok, location: @academic_program }
      else
        format.html { render :edit }
        format.json { render json: @academic_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_programs/1
  # DELETE /academic_programs/1.json
  def destroy
    @academic_program.destroy
    respond_to do |format|
      format.html { redirect_to academic_programs_url, notice: 'Academic program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_academic_program
      @academic_program = AcademicProgram.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def academic_program_params
      params.require(:academic_program).permit(:type, :admission_requirements, :career_opportunities, :contact_information, :degree, :keywords, :name, :online, :program_description, :transfer_agreements, :minimum_course_grade, :minimum_cumulative_gpa)
    end
end
