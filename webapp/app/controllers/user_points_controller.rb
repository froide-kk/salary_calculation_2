class UserPointsController < ApplicationController
  before_action :set_user_point, only: [:show, :edit, :update, :destroy]

  # GET /user_points
  # GET /user_points.json
  def index
    @user_points = UserPoint.all
  end

  # GET /user_points/1
  # GET /user_points/1.json
  def show
  end

  # GET /user_points/new
  def new
    @user_point = UserPoint.new
  end

  # GET /user_points/1/edit
  def edit
  end

  # POST /user_points
  # POST /user_points.json
  def create
    @user_point = UserPoint.new(user_point_params)

    respond_to do |format|
      if @user_point.save
        format.html { redirect_to @user_point, notice: 'User point was successfully created.' }
        format.json { render :show, status: :created, location: @user_point }
      else
        format.html { render :new }
        format.json { render json: @user_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_points/1
  # PATCH/PUT /user_points/1.json
  def update
    respond_to do |format|
      if @user_point.update(user_point_params)
        format.html { redirect_to @user_point, notice: 'User point was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_point }
      else
        format.html { render :edit }
        format.json { render json: @user_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_points/1
  # DELETE /user_points/1.json
  def destroy
    @user_point.destroy
    respond_to do |format|
      format.html { redirect_to user_points_url, notice: 'User point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_point
      @user_point = UserPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_point_params
      params.require(:user_point).permit(:index, :user_info_id, :master_additionalpoint_id, :value, :reason)
    end
end
