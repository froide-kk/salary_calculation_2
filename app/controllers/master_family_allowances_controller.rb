class MasterFamilyAllowancesController < ApplicationController
  before_action :set_master_family_allowance, only: [:show, :edit, :update, :destroy]

  # GET /master_family_allowances
  # GET /master_family_allowances.json
  def index
    @master_family_allowances = MasterFamilyAllowance.all
  end

  # GET /master_family_allowances/1
  # GET /master_family_allowances/1.json
  def show
  end

  # GET /master_family_allowances/new
  def new
    @master_family_allowance = MasterFamilyAllowance.new
  end

  # GET /master_family_allowances/1/edit
  def edit
  end

  # POST /master_family_allowances
  # POST /master_family_allowances.json
  def create
    @master_family_allowance = MasterFamilyAllowance.new(master_family_allowance_params)

    respond_to do |format|
      if @master_family_allowance.save
        format.html { redirect_to @master_family_allowance, notice: 'Master family allowance was successfully created.' }
        format.json { render :show, status: :created, location: @master_family_allowance }
      else
        format.html { render :new }
        format.json { render json: @master_family_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_family_allowances/1
  # PATCH/PUT /master_family_allowances/1.json
  def update
    respond_to do |format|
      if @master_family_allowance.update(master_family_allowance_params)
        format.html { redirect_to @master_family_allowance, notice: 'Master family allowance was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_family_allowance }
      else
        format.html { render :edit }
        format.json { render json: @master_family_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_family_allowances/1
  # DELETE /master_family_allowances/1.json
  def destroy
    @master_family_allowance.destroy
    respond_to do |format|
      format.html { redirect_to master_family_allowances_url, notice: 'Master family allowance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_family_allowance
      @master_family_allowance = MasterFamilyAllowance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_family_allowance_params
      params.require(:master_family_allowance).permit(:index, :name, :allowance)
    end
end
