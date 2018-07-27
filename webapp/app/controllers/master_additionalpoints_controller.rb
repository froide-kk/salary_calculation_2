class MasterAdditionalpointsController < ApplicationController
  before_action :set_master_additionalpoint, only: [:show, :edit, :update, :destroy]

  # GET /master_additionalpoints
  # GET /master_additionalpoints.json
  def index
    @master_additionalpoints = MasterAdditionalpoint.all
  end

  # GET /master_additionalpoints/1
  # GET /master_additionalpoints/1.json
  def show
  end

  # GET /master_additionalpoints/new
  def new
    @master_additionalpoint = MasterAdditionalpoint.new
  end

  # GET /master_additionalpoints/1/edit
  def edit
  end

  # POST /master_additionalpoints
  # POST /master_additionalpoints.json
  def create
    @master_additionalpoint = MasterAdditionalpoint.new(master_additionalpoint_params)

    respond_to do |format|
      if @master_additionalpoint.save
        format.html { redirect_to @master_additionalpoint, notice: 'Master additionalpoint was successfully created.' }
        format.json { render :show, status: :created, location: @master_additionalpoint }
      else
        format.html { render :new }
        format.json { render json: @master_additionalpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_additionalpoints/1
  # PATCH/PUT /master_additionalpoints/1.json
  def update
    respond_to do |format|
      if @master_additionalpoint.update(master_additionalpoint_params)
        format.html { redirect_to @master_additionalpoint, notice: 'Master additionalpoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_additionalpoint }
      else
        format.html { render :edit }
        format.json { render json: @master_additionalpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_additionalpoints/1
  # DELETE /master_additionalpoints/1.json
  def destroy
    @master_additionalpoint.destroy
    respond_to do |format|
      format.html { redirect_to master_additionalpoints_url, notice: 'Master additionalpoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_additionalpoint
      @master_additionalpoint = MasterAdditionalpoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_additionalpoint_params
      params.require(:master_additionalpoint).permit(:index, :name, :allowance)
    end
end
