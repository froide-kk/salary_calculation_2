class MasterStandardsController < ApplicationController
  before_action :set_master_standard, only: [:show, :edit, :update, :destroy]

  # GET /master_standards
  # GET /master_standards.json
  def index
    @master_standards = MasterStandard.all
  end

  # GET /master_standards/1
  # GET /master_standards/1.json
  def show
  end

  # GET /master_standards/new
  def new
    @master_standard = MasterStandard.new
  end

  # GET /master_standards/1/edit
  def edit
  end

  # POST /master_standards
  # POST /master_standards.json
  def create
    @master_standard = MasterStandard.new(master_standard_params)

    respond_to do |format|
      if @master_standard.save
        format.html { redirect_to @master_standard, notice: 'Master standard was successfully created.' }
        format.json { render :show, status: :created, location: @master_standard }
      else
        format.html { render :new }
        format.json { render json: @master_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_standards/1
  # PATCH/PUT /master_standards/1.json
  def update
    respond_to do |format|
      if @master_standard.update(master_standard_params)
        format.html { redirect_to @master_standard, notice: 'Master standard was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_standard }
      else
        format.html { render :edit }
        format.json { render json: @master_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_standards/1
  # DELETE /master_standards/1.json
  def destroy
    @master_standard.destroy
    respond_to do |format|
      format.html { redirect_to master_standards_url, notice: 'Master standard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_standard
      @master_standard = MasterStandard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_standard_params
      params.require(:master_standard).permit(:index, :name, :value)
    end
end
