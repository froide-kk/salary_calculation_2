class Test4sController < ApplicationController
  before_action :set_test4, only: [:show, :edit, :update, :destroy]

  # GET /test4s
  # GET /test4s.json
  def index
    @test4s = Test4.all
  end

  # GET /test4s/1
  # GET /test4s/1.json
  def show
  end

  # GET /test4s/new
  def new
    @test4 = Test4.new
  end

  # GET /test4s/1/edit
  def edit
  end

  # POST /test4s
  # POST /test4s.json
  def create
    @test4 = Test4.new(test4_params)

    respond_to do |format|
      if @test4.save
        format.html { redirect_to @test4, notice: 'Test4 was successfully created.' }
        format.json { render :show, status: :created, location: @test4 }
      else
        format.html { render :new }
        format.json { render json: @test4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test4s/1
  # PATCH/PUT /test4s/1.json
  def update
    respond_to do |format|
      if @test4.update(test4_params)
        format.html { redirect_to @test4, notice: 'Test4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @test4 }
      else
        format.html { render :edit }
        format.json { render json: @test4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test4s/1
  # DELETE /test4s/1.json
  def destroy
    @test4.destroy
    respond_to do |format|
      format.html { redirect_to test4s_url, notice: 'Test4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test4
      @test4 = Test4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test4_params
      params.require(:test4).permit(:name, :test2_id)
    end
end
