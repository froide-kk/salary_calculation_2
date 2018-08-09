class SaveInfosController < ApplicationController
  before_action :set_save_info, only: [:show, :edit, :update, :destroy]

  # GET /save_infos
  # GET /save_infos.json
  def index
    @save_infos = SaveInfo.all
    @index = 1
    @save_infos.each do |index_save|
      index_save.index = @index
      @index +=1
    end
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


    ## save_info
    @master_additionalpoints = MasterAdditionalpoint.all
    @master_standards = MasterStandard.all
    @master_family_allowances = MasterFamilyAllowance.all
    @master_std_6 = 0
    @master_std_5 = 0
    @count1 = 0
    @master_family_allowances.each do |master_family|
      @count1 += 1
      if @count1 == 1
        @part = master_family.allowance
      end
      if @count1 == 2
        @chil = master_family.allowance
      end
    end
    @count = 0
    @master_standards.each do |master_standard|
      @count += 1
      if @count == 5
        @master_std_5 = master_standard.value
      end
      if @count == 6
        @master_std_6 = master_standard.value
      end
    end

    ##basic_wage
    @basic_wage = 120250
    if @save_info.user_info.shorter_working_hour_ch.to_i == 1
      @basic_wage = @basic_wage * 6/8
    end
    @save_info.basic_age = @basic_wage

    ##functional_level
    @total_allowance = 0
    @master_additionalpoints.each do |master_additionalpoint|
      if @save_info.user_info.id.to_i == master_additionalpoint.index.to_i
        @total_allowance = @total_allowance + master_additionalpoint.allowance.to_i * master_additionalpoint.index.to_i
      end
    end
    @functional_level = 0
    @functional_level = @save_info.user_info.master_position.functional_allowance.to_i + @save_info.user_info.age_adjustment.to_i + @total_allowance
    if @save_info.user_info.shorter_working_hour_ch.to_i == 1
      @functional_level = @functional_level * 6/8
    end
    @save_info.functional_level = @functional_level


    ##normal_working_hour_allowance
    @normal_working_hour_allowance = @save_info.user_info.master_job.allowance
    if @save_info.user_info.shorter_working_hour_ch.to_i == 1
      @normal_working_hour_allowance = @normal_working_hour_allowance * 6/8
    end
    @save_info.normal_working_hour_allowance = @normal_working_hour_allowance

    ##metropolitan_allowance
    @metropolitan_allowance = 0
    @save_info.metropolitan_allowance = @metropolitan_allowance


    ##basic_pay
    @basic_pay = @basic_wage + @functional_level + @save_info.user_info.master_position.functional_allowance + @save_info.user_info.master_job.allowance + @normal_working_hour_allowance
    @save_info.basic_pay = @basic_pay

    ##save_info_hourly_wage
    @hourly_wage = @basic_pay / @master_std_5
    if @save_info.user_info.shorter_working_hour_ch.to_i == 1
      @basic_pay / @master_std_6
    end
    @save_info.hourly_wage = @hourly_wage

    ##extra_work_hourly_wage
    @extra_work_hourly_wage = @hourly_wage * 1.25
    @save_info.extra_work_hourly_wage = @extra_work_hourly_wage

    ##extra_work_time
    @extra_work_time = @save_info.user_info.master_position.deemded_overtime
    if @save_info.user_info.shorter_working_hour_ch.to_i == 1
      @extra_work_time = @extra_work_time * 6/8
    end
    @save_info.extra_work_time = @extra_work_time

    ##overtime_pay
    @overtime_pay = @extra_work_time * @extra_work_hourly_wage
    @save_info.overtime_pay = @overtime_pay


    ##family_allowance
    @family_allowance = @save_info.user_info.partner_num * @part + @save_info.user_info.family_num * @chil
    @save_info.family_allowance = @family_allowance

    ##face_wage
    @face_wage = @basic_pay + @overtime_pay + @family_allowance
    @save_info.face_wage = @face_wage


    ##difference
    @secondhalf_salay = 0
    @save_info.difference = @secondhalf_salay

    ##secondhalf_salay
    @secondhalf_salay = @save_info.face_wage + @save_info.difference
    @save_info.secondhalf_salay = @face_wage

    ##promotion_rate
    @promotion_rate = 0
    @save_info.promotion_rate = @promotion_rate

    ##ratio
    @ratio = 0
    @save_info.ratio = @ratio

    ##hourly_difference
    @hourly_difference = 0
    @save_info.hourly_difference = 0

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


      ## save_info
      @master_additionalpoints = MasterAdditionalpoint.all
      @master_standards = MasterStandard.all
      @master_family_allowances = MasterFamilyAllowance.all
      @master_std_6 = 0
      @master_std_5 = 0
      @count1 = 0
      @master_family_allowances.each do |master_family|
        @count1 += 1
        if @count1 == 1
          @part = master_family.allowance
        end
        if @count1 == 2
          @chil = master_family.allowance
        end
      end
      @count = 0
      @master_standards.each do |master_standard|
        @count += 1
        if @count == 5
          @master_std_5 = master_standard.value
        end
        if @count == 6
          @master_std_6 = master_standard.value
        end
      end

      ##basic_wage
      @basic_wage = 120250
      if @save_info.user_info.shorter_working_hour_ch.to_i == 1
        @basic_wage = @basic_wage * 6/8
      end
      @save_info.basic_age = @basic_wage

      ##functional_level
      @total_allowance = 0
      @master_additionalpoints.each do |master_additionalpoint|
        if @save_info.user_info.id.to_i == master_additionalpoint.index.to_i
          @total_allowance = @total_allowance + master_additionalpoint.allowance.to_i * master_additionalpoint.index.to_i
        end
      end
      @functional_level = 0
      @functional_level = @save_info.user_info.master_position.functional_allowance.to_i + @save_info.user_info.age_adjustment.to_i + @total_allowance
      if @save_info.user_info.shorter_working_hour_ch.to_i == 1
        @functional_level = @functional_level * 6/8
      end
      @save_info.functional_level = @functional_level


      ##normal_working_hour_allowance
      @normal_working_hour_allowance = @save_info.user_info.master_job.allowance
      if @save_info.user_info.shorter_working_hour_ch.to_i == 1
        @normal_working_hour_allowance = @normal_working_hour_allowance * 6/8
      end
      @save_info.normal_working_hour_allowance = @normal_working_hour_allowance

      ##metropolitan_allowance
      @metropolitan_allowance = 0
      @save_info.metropolitan_allowance = @metropolitan_allowance


      ##basic_pay
      @basic_pay = @basic_wage + @functional_level + @save_info.user_info.master_position.functional_allowance + @save_info.user_info.master_job.allowance + @normal_working_hour_allowance
      @save_info.basic_pay = @basic_pay

      ##save_info_hourly_wage
      @hourly_wage = @basic_pay / @master_std_5
      if @save_info.user_info.shorter_working_hour_ch.to_i == 1
        @basic_pay / @master_std_6
      end
      @save_info.hourly_wage = @hourly_wage

      ##extra_work_hourly_wage
      @extra_work_hourly_wage = @hourly_wage * 1.25
      @save_info.extra_work_hourly_wage = @extra_work_hourly_wage

      ##extra_work_time
      @extra_work_time = @save_info.user_info.master_position.deemded_overtime
      if @save_info.user_info.shorter_working_hour_ch.to_i == 1
        @extra_work_time = @extra_work_time * 6/8
      end
      @save_info.extra_work_time = @extra_work_time

      ##overtime_pay
      @overtime_pay = @extra_work_time * @extra_work_hourly_wage
      @save_info.overtime_pay = @overtime_pay


      ##family_allowance
      @family_allowance = @save_info.user_info.partner_num * @part + @save_info.user_info.family_num * @chil
      @save_info.family_allowance = @family_allowance

      ##face_wage
      @face_wage = @basic_pay + @overtime_pay + @family_allowance
      @save_info.face_wage = @face_wage


      ##difference
      @secondhalf_salay = 0
      @save_info.difference = @secondhalf_salay

      ##secondhalf_salay
      @secondhalf_salay = @save_info.face_wage + @save_info.difference
      @save_info.secondhalf_salay = @face_wage

      ##promotion_rate
      @promotion_rate = 0
      @save_info.promotion_rate = @promotion_rate

      ##ratio
      @ratio = 0
      @save_info.ratio = @ratio

      ##hourly_difference
      @hourly_difference = 0
      @save_info.hourly_difference = 0


    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def save_info_params
      params.require(:save_info).permit(:user_info_id, :index, :year, :month, :basic_age, :functional_level, :normal_working_hour_allowance, :metropolitan_allowance, :basic_pay, :hourly_wage, :extra_work_hourly_wage, :extra_work_time, :overtime_pay, :family_allowance, :face_wage, :difference, :promotion_rate, :hourly_difference, :ratio, :secondhalf_salay)
    end
end
