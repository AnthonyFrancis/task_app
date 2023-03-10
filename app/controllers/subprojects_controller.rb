class SubprojectsController < ApplicationController
  before_action :set_subproject, only: %i[ show edit update destroy ]
  before_action :set_project, only: [:show, :edit, :update, :create, :new, :destroy]


  # GET /subprojects or /subprojects.json
  def index
    @subprojects = current_user.subprojects
  end

  # GET /subprojects/1 or /subprojects/1.json
  def show
  end

  # GET /subprojects/new
  def new
    @subproject = @project.subprojects.new
  end

  # GET /subprojects/1/edit
  def edit
  end

  # POST /subprojects or /subprojects.json
  def create
    @subproject = @project.subprojects.build(subproject_params)

    respond_to do |format|
      if @subproject.save
        format.html { redirect_to @subproject.project, notice: "Subproject was successfully created." }
        format.json { render :show, status: :created, location: @subproject }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subprojects/1 or /subprojects/1.json
  def update
    respond_to do |format|
      if @subproject.update(subproject_params)
        format.html { redirect_to @subproject.project, notice: "Subproject was successfully updated." }
        format.json { render :show, status: :ok, location: @subproject }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subprojects/1 or /subprojects/1.json
  def destroy
    @subproject.destroy

    respond_to do |format|
      format.html { redirect_to subprojects_url, notice: "Subproject was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subproject
      @subproject = Subproject.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Only allow a list of trusted parameters through.
    def subproject_params
      params.require(:subproject).permit(:subproject_name, :project_id)
    end
end