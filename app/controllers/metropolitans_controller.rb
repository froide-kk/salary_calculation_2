class MetropolitansController < ApplicationController
  before_action :set_metropolitan, only: [:show, :edit, :update, :destroy]

  # GET /metropolitans
  # GET /metropolitans.json
  def index
    @metropolitans = Metropolitan.all
  end

  # GET /metropolitans/1
  # GET /metropolitans/1.json
  def show
  end

  # GET /metropolitans/new
  def new
    @metropolitan = Metropolitan.new
  end

  # GET /metropolitans/1/edit
  def edit
  end

  # POST /metropolitans
  # POST /metropolitans.json
  def create
    @metropolitan = Metropolitan.new(metropolitan_params)

    respond_to do |format|
      if @metropolitan.save
        format.html { redirect_to @metropolitan, notice: 'Metropolitan was successfully created.' }
        format.json { render :show, status: :created, location: @metropolitan }
      else
        format.html { render :new }
        format.json { render json: @metropolitan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metropolitans/1
  # PATCH/PUT /metropolitans/1.json
  def update
    respond_to do |format|
      if @metropolitan.update(metropolitan_params)
        format.html { redirect_to @metropolitan, notice: 'Metropolitan was successfully updated.' }
        format.json { render :show, status: :ok, location: @metropolitan }
      else
        format.html { render :edit }
        format.json { render json: @metropolitan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metropolitans/1
  # DELETE /metropolitans/1.json
  def destroy
    @metropolitan.destroy
    respond_to do |format|
      format.html { redirect_to metropolitans_url, notice: 'Metropolitan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metropolitan
      @metropolitan = Metropolitan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metropolitan_params
      params.require(:metropolitan).permit(:index, :address, :address_allowance)
    end
end
