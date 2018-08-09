class MasterJobsController < ApplicationController
  before_action :set_master_job, only: [:show, :edit, :update, :destroy]

  # GET /master_jobs
  # GET /master_jobs.json
  def index
    @master_jobs = MasterJob.all
  end

  # GET /master_jobs/1
  # GET /master_jobs/1.json
  def show
  end

  # GET /master_jobs/new
  def new
    @master_job = MasterJob.new
  end

  # GET /master_jobs/1/edit
  def edit

  end

  # POST /master_jobs
  # POST /master_jobs.json
  def create
    @master_job = MasterJob.new(master_job_params)

    respond_to do |format|
      if @master_job.save
        format.html { redirect_to @master_job, notice: 'Master job was successfully created.' }
        format.json { render :show, status: :created, location: @master_job }
      else
        format.html { render :new }
        format.json { render json: @master_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_jobs/1
  # PATCH/PUT /master_jobs/1.json
  def update
    respond_to do |format|
      if @master_job.update(master_job_params)
        format.html { redirect_to @master_job, notice: 'Master job was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_job }
      else
        format.html { render :edit }
        format.json { render json: @master_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_jobs/1
  # DELETE /master_jobs/1.json
  def destroy
    @master_job.destroy
    respond_to do |format|
      format.html { redirect_to master_jobs_url, notice: 'Master job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_job
      @master_job = MasterJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_job_params
      params.require(:master_job).permit(:index, :name, :allowance)
    end
end
