class MasterMetropolitionsController < ApplicationController
  before_action :set_master_metropolition, only: [:show, :edit, :update, :destroy]

  # GET /master_metropolitions
  # GET /master_metropolitions.json
  def index
    @master_metropolitions = MasterMetropolition.all
  end

  # GET /master_metropolitions/1
  # GET /master_metropolitions/1.json
  def show
  end

  # GET /master_metropolitions/new
  def new
    @master_metropolition = MasterMetropolition.new
  end

  # GET /master_metropolitions/1/edit
  def edit
  end

  # POST /master_metropolitions
  # POST /master_metropolitions.json
  def create
    @master_metropolition = MasterMetropolition.new(master_metropolition_params)

    respond_to do |format|
      if @master_metropolition.save
        format.html { redirect_to @master_metropolition, notice: 'Master metropolition was successfully created.' }
        format.json { render :show, status: :created, location: @master_metropolition }
      else
        format.html { render :new }
        format.json { render json: @master_metropolition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_metropolitions/1
  # PATCH/PUT /master_metropolitions/1.json
  def update
    respond_to do |format|
      if @master_metropolition.update(master_metropolition_params)
        format.html { redirect_to @master_metropolition, notice: 'Master metropolition was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_metropolition }
      else
        format.html { render :edit }
        format.json { render json: @master_metropolition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_metropolitions/1
  # DELETE /master_metropolitions/1.json
  def destroy
    @master_metropolition.destroy
    respond_to do |format|
      format.html { redirect_to master_metropolitions_url, notice: 'Master metropolition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_metropolition
      @master_metropolition = MasterMetropolition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_metropolition_params
      params.require(:master_metropolition).permit(:index, :name, :allowance)
    end
end
