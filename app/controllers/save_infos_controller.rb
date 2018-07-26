class SaveInfosController < ApplicationController
  before_action :set_save_info, only: [:show, :edit, :update, :destroy]

  # GET /save_infos
  # GET /save_infos.json
  def index
    @save_infos = SaveInfo.all
  end

  # GET /save_infos/1
  # GET /save_infos/1.json
  def show
  end

  # GET /save_infos/new
  def new
    @save_info = SaveInfo.new
  end

  # GET /save_infos/1/edit
  def edit
  end

  # POST /save_infos
  # POST /save_infos.json
  def create
    @save_info = SaveInfo.new(save_info_params)

    respond_to do |format|
      if @save_info.save
        format.html { redirect_to @save_info, notice: 'Save info was successfully created.' }
        format.json { render :show, status: :created, location: @save_info }
      else
        format.html { render :new }
        format.json { render json: @save_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /save_infos/1
  # PATCH/PUT /save_infos/1.json
  def update
    respond_to do |format|
      if @save_info.update(save_info_params)
        format.html { redirect_to @save_info, notice: 'Save info was successfully updated.' }
        format.json { render :show, status: :ok, location: @save_info }
      else
        format.html { render :edit }
        format.json { render json: @save_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /save_infos/1
  # DELETE /save_infos/1.json
  def destroy
    @save_info.destroy
    respond_to do |format|
      format.html { redirect_to save_infos_url, notice: 'Save info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_save_info
      @save_info = SaveInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def save_info_params
      params.require(:save_info).permit(:user_info_id, :index, :year, :month, :basic_age, :functional_level, :normal_working_hour_allowance, :metropolitan_allowance, :basic_pay, :hourly_wage, :extra_work_hourly_wage, :extra_work_time, :overtime_pay, :family_allowance, :face_wage, :difference, :promotion_rate, :hourly_difference, :ratio)
    end
end
