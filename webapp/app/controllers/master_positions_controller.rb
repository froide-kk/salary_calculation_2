class MasterPositionsController < ApplicationController
  before_action :set_master_position, only: [:show, :edit, :update, :destroy]

  # GET /master_positions
  # GET /master_positions.json
  def index
    @master_positions = MasterPosition.all
  end

  # GET /master_positions/1
  # GET /master_positions/1.json
  def show
  end

  # GET /master_positions/new
  def new
    @master_position = MasterPosition.new
  end

  # GET /master_positions/1/edit
  def edit
  end

  # POST /master_positions
  # POST /master_positions.json
  def create
    @master_position = MasterPosition.new(master_position_params)

    respond_to do |format|
      if @master_position.save
        format.html { redirect_to @master_position, notice: 'Master position was successfully created.' }
        format.json { render :show, status: :created, location: @master_position }
      else
        format.html { render :new }
        format.json { render json: @master_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_positions/1
  # PATCH/PUT /master_positions/1.json
  def update
    respond_to do |format|
      if @master_position.update(master_position_params)
        format.html { redirect_to @master_position, notice: 'Master position was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_position }
      else
        format.html { render :edit }
        format.json { render json: @master_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_positions/1
  # DELETE /master_positions/1.json
  def destroy
    @master_position.destroy
    respond_to do |format|
      format.html { redirect_to master_positions_url, notice: 'Master position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_position
      @master_position = MasterPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_position_params
      params.require(:master_position).permit(:name, :index, :function-allowance, :duty-allowance, :deemded-overtime, :standard-age)
    end
end
