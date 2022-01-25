class DependenciesController < ApplicationController
  before_action :set_dependency, only: %i[ show edit update destroy ]

  # GET /dependencies or /dependencies.json
  def index
    @dependencies = Dependency.all
  end

  # GET /dependencies/1 or /dependencies/1.json
  def show
  end

  # GET /dependencies/new
  def new
    @dependency = Dependency.new
  end

  # GET /dependencies/1/edit
  def edit
  end

  # POST /dependencies or /dependencies.json
  def create
    @dependency = Dependency.new(dependency_params)

    respond_to do |format|
      if @dependency.save
        format.html { redirect_to dependency_url(@dependency), notice: "Dependency was successfully created." }
        format.json { render :show, status: :created, location: @dependency }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dependency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dependencies/1 or /dependencies/1.json
  def update
    respond_to do |format|
      if @dependency.update(dependency_params)
        format.html { redirect_to dependency_url(@dependency), notice: "Dependency was successfully updated." }
        format.json { render :show, status: :ok, location: @dependency }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dependency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependencies/1 or /dependencies/1.json
  def destroy
    @dependency.destroy

    respond_to do |format|
      format.html { redirect_to dependencies_url, notice: "Dependency was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependency
      @dependency = Dependency.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dependency_params
      params.require(:dependency).permit(:name, :active)
    end
end
