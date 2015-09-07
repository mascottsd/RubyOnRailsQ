class TblJobsController < ApplicationController
  before_action :set_tbl_job, only: [:show, :edit, :update, :destroy]

  # GET /tbl_jobs
  # GET /tbl_jobs.json
  def index
    @tbl_jobs = TblJob.all
  end

  # GET /tbl_jobs/1
  # GET /tbl_jobs/1.json
  def show
#      require "mechanize"
#    page = Mechanize.new
#    page = page.get( @tbl_job.url )
#      @tbl_job.html = page.body
  end

  # GET /tbl_jobs/new
  def new
    @tbl_job = TblJob.new
  end

  # GET /tbl_jobs/1/edit
  def edit
  end

  # POST /tbl_jobs
  # POST /tbl_jobs.json
  def create
    @tbl_job = TblJob.new(tbl_job_params)

    respond_to do |format|
      if @tbl_job.save
        format.html { redirect_to @tbl_job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @tbl_job }
      else
        format.html { render :new }
        format.json { render json: @tbl_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbl_jobs/1
  # PATCH/PUT /tbl_jobs/1.json
  def update
    respond_to do |format|
      if @tbl_job.update(tbl_job_params)
        format.html { redirect_to @tbl_job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @tbl_job }
      else
        format.html { render :edit }
        format.json { render json: @tbl_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_jobs/1
  # DELETE /tbl_jobs/1.json
  def destroy
    @tbl_job.destroy
    respond_to do |format|
      format.html { redirect_to tbl_jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_job
      @tbl_job = TblJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tbl_job_params
      params.require(:tbl_job).permit(:url, :html)
    end
end
