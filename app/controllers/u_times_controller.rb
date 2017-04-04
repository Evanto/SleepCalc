class UTimesController < ApplicationController
  before_action :set_u_time, only: [:show, :edit, :update, :destroy]

  def index
    @u_time = UTime.new
  end

  # GET /u_times
  # GET /u_times.json
  def index
    @u_times = UTime.all
  end

  # GET /u_times/1
  # GET /u_times/1.json
  def show
  end

  # GET /u_times/new
  def new
    @u_time = UTime.new
  end

  # GET /u_times/1/edit
  def edit
  end

  # POST /u_times
  # POST /u_times.json
  def create
    @u_time = UTime.new(u_time_params)

    respond_to do |format|
      if @u_time.save
        format.html { redirect_to @u_time, notice: 'U time was successfully created.' }
        format.json { render :show, status: :created, location: @u_time }
      else
        format.html { render :new }
        format.json { render json: @u_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /u_times/1
  # PATCH/PUT /u_times/1.json
  def update
    respond_to do |format|
      if @u_time.update(u_time_params)
        format.html { redirect_to @u_time, notice: 'U time was successfully updated.' }
        format.json { render :show, status: :ok, location: @u_time }
      else
        format.html { render :edit }
        format.json { render json: @u_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /u_times/1
  # DELETE /u_times/1.json
  def destroy
    @u_time.destroy
    respond_to do |format|
      format.html { redirect_to u_times_url, notice: 'U time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_u_time
      @u_time = UTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def u_time_params
      params.require(:u_time).permit(:hours, :mins)
    end
end
