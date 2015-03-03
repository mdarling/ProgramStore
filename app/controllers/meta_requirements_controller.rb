class MetaRequirementsController < ApplicationController
  before_action :set_meta_requirement, only: [:show, :edit, :update, :destroy]

  # GET /meta_requirements
  # GET /meta_requirements.json
  def index
    @meta_requirements = MetaRequirement.all
  end

  # GET /meta_requirements/1
  # GET /meta_requirements/1.json
  def show
  end

  # GET /meta_requirements/new
  def new
    @meta_requirement = MetaRequirement.new
  end

  # GET /meta_requirements/1/edit
  def edit
  end

  # POST /meta_requirements
  # POST /meta_requirements.json
  def create
    @meta_requirement = MetaRequirement.new(meta_requirement_params)

    respond_to do |format|
      if @meta_requirement.save
        format.html { redirect_to @meta_requirement, notice: 'Meta requirement was successfully created.' }
        format.json { render :show, status: :created, location: @meta_requirement }
      else
        format.html { render :new }
        format.json { render json: @meta_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meta_requirements/1
  # PATCH/PUT /meta_requirements/1.json
  def update
    respond_to do |format|
      if @meta_requirement.update(meta_requirement_params)
        format.html { redirect_to @meta_requirement, notice: 'Meta requirement was successfully updated.' }
        format.json { render :show, status: :ok, location: @meta_requirement }
      else
        format.html { render :edit }
        format.json { render json: @meta_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meta_requirements/1
  # DELETE /meta_requirements/1.json
  def destroy
    @meta_requirement.destroy
    respond_to do |format|
      format.html { redirect_to meta_requirements_url, notice: 'Meta requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meta_requirement
      @meta_requirement = MetaRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meta_requirement_params
      params.require(:meta_requirement).permit(:institutional_entity_id, :description, :value)
    end
end
