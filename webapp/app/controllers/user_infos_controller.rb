class UserInfosController < ApplicationController
  before_action :set_user_info, only: [:show, :edit, :update, :destroy]

  # GET /user_infos
  # GET /user_infos.json
  def index
    @user_infos = UserInfo.all
    @index = 1
    @user_infos.each do |index_user|
      index_user.index = @index
      @index +=1
    end
  end

  # GET /user_infos/1
  # GET /user_infos/1.json
  def show
  end

  # GET /user_infos/new
  def new
    @user_info = UserInfo.new
  end

  # GET /user_infos/1/edit
  def edit
  end

  # POST /user_infos
  # POST /user_infos.json
  def create
    @user_info = UserInfo.new(user_info_params)
    ##Index

    @user_info.index = 0

    ##user_info
    @master_standards = MasterStandard.all
    @master_allowance = Array.new
    @master_standards.each do |master_standard|
      @master_allowance.push(master_standard.value)
    end

    ##ageP
    @user_agep = @user_info.age.to_i
    if @user_agep > @master_allowance.at(1).to_i
      @user_agep = @master_allowance.at(1).to_i
    end
    @user_info.ageP = @user_agep - @user_info.master_position.standard_age.to_i

    ##adjustment
    @user_age_adjustment = 0
    @user_position_allowance = @user_info.master_job.allowance.to_i
    if @user_position_allowance <= 0
      if @user_info.master_position.standard_age > @master_allowace.at(2).to_i

      end
    end
    @user_info.age_adjustment = @user_age_adjustment


    respond_to do |format|
      if @user_info.save
        format.html { redirect_to @user_info, notice: 'User info was successfully created.' }
        format.json { render :show, status: :created, location: @user_info }
      else
        format.html { render :new }
        format.json { render json: @user_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_infos/1
  # PATCH/PUT /user_infos/1.json
  def update
    respond_to do |format|
      if @user_info.update(user_info_params)
        format.html { redirect_to @user_info, notice: 'User info was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_info }
      else
        format.html { render :edit }
        format.json { render json: @user_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_infos/1
  # DELETE /user_infos/1.json
  def destroy
    @user_info.destroy
    respond_to do |format|
      format.html { redirect_to user_infos_url, notice: 'User info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_info
      @user_info = UserInfo.find(params[:id])

      ##user_info
      @master_standards = MasterStandard.all
      @master_allowance = Array.new
      @master_standards.each do |master_standard|
        @master_allowance.push(master_standard.value)
      end

      ##ageP
      @user_agep = @user_info.age.to_i
      if @user_agep > @master_allowance.at(1).to_i
        @user_agep = @master_allowance.at(1).to_i
      end
      @user_info.ageP = @user_agep - @user_info.master_position.standard_age.to_i

      ##adjustment
      @user_age_adjustment = 0
      @user_position_allowance = @user_info.master_job.allowance.to_i
      if @user_position_allowance <= 0
        if @user_info.master_position.standard_age > @master_allowance.at(2).to_i
            @user_age_adjustment = @master_allowance.at(2).to_i
        end
        if @user_info.master_position.standard_age < @master_allowance.at(2).to_i * -1
          @user_age_adjustment = @master_allowance.at(2).to_i * -1
        end
      end
      @user_info.age_adjustment = @user_age_adjustment


    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_info_params
      params.require(:user_info).permit(:master_position_id, :master_job_id, :index, :name, :birth, :age, :ageP, :age_adjustment, :insurance, :address, :partner_num, :family_num, :shorter_working_hour_ch)
    end
end
