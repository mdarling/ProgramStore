class DegreeRequirementTypesController < ApplicationController
  before_action :set_degree_requirement_type, only: [:show, :edit, :update, :destroy]

  # GET /degree_requirement_types
  # GET /degree_requirement_types.json
  def index
    @degree_requirement_types = DegreeRequirementType.all
  end

  # GET /degree_requirement_types/1
  # GET /degree_requirement_types/1.json
  def show
  end

  # GET /degree_requirement_types/new
  def new
    @degree_requirement_type = DegreeRequirementType.new
  end

  # GET /degree_requirement_types/1/edit
  def edit
  end

  # POST /degree_requirement_types
  # POST /degree_requirement_types.json
  def create
    @degree_requirement_type = DegreeRequirementType.new(degree_requirement_type_params)

    respond_to do |format|
      if @degree_requirement_type.save
        format.html { redirect_to @degree_requirement_type, notice: 'Degree requirement type was successfully created.' }
        format.json { render :show, status: :created, location: @degree_requirement_type }
      else
        format.html { render :new }
        format.json { render json: @degree_requirement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /degree_requirement_types/1
  # PATCH/PUT /degree_requirement_types/1.json
  def update
    respond_to do |format|
      if @degree_requirement_type.update(degree_requirement_type_params)
        format.html { redirect_to @degree_requirement_type, notice: 'Degree requirement type was successfully updated.' }
        format.json { render :show, status: :ok, location: @degree_requirement_type }
      else
        format.html { render :edit }
        format.json { render json: @degree_requirement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /degree_requirement_types/1
  # DELETE /degree_requirement_types/1.json
  def destroy
    @degree_requirement_type.destroy
    respond_to do |format|
      format.html { redirect_to degree_requirement_types_url, notice: 'Degree requirement type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_degree_requirement_type
      @degree_requirement_type = DegreeRequirementType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def degree_requirement_type_params
      params.require(:degree_requirement_type).permit(:type_of_degree_requirement, :degree_requirement_id)
    end
end
