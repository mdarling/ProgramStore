class InstitutionalEntitiesController < ApplicationController
  before_action :set_institutional_entity, only: [:show, :edit, :update, :destroy]

  # GET /institutional_entities
  # GET /institutional_entities.json
  def index
    @institutional_entities = InstitutionalEntity.all
  end

  # GET /institutional_entities/1
  # GET /institutional_entities/1.json
  def show
  end

  # GET /institutional_entities/new
  def new
    @institutional_entity = InstitutionalEntity.new
  end

  # GET /institutional_entities/1/edit
  def edit
  end

  # POST /institutional_entities
  # POST /institutional_entities.json
  def create
    @institutional_entity = InstitutionalEntity.new(institutional_entity_params)

    respond_to do |format|
      if @institutional_entity.save
        format.html { redirect_to @institutional_entity, notice: 'Institutional entity was successfully created.' }
        format.json { render :show, status: :created, location: @institutional_entity }
      else
        format.html { render :new }
        format.json { render json: @institutional_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institutional_entities/1
  # PATCH/PUT /institutional_entities/1.json
  def update
    respond_to do |format|
      if @institutional_entity.update(institutional_entity_params)
        format.html { redirect_to @institutional_entity, notice: 'Institutional entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @institutional_entity }
      else
        format.html { render :edit }
        format.json { render json: @institutional_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutional_entities/1
  # DELETE /institutional_entities/1.json
  def destroy
    @institutional_entity.destroy
    respond_to do |format|
      format.html { redirect_to institutional_entities_url, notice: 'Institutional entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institutional_entity
      @institutional_entity = InstitutionalEntity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institutional_entity_params
      params.require(:institutional_entity).permit(:parent_entity_id, :type, :level, :acronym, :grad_programs, :name, :org_code, :undergrad_programs, :url)
    end
end
