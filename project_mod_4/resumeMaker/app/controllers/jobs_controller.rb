class JobsController < ApplicationController

  def index
    @jobs = Job.all
    render json: @jobs
  end
  def create
    @job = Job.create(job_params)
    render json: @job
  end
  def show
    @job = Job.find(params[:id])
    render json: @job
  end
  def update
    @job = Job.find(params[:id])
    render json: @job
  end
  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    @jobs = Job.all
    render json: @jobs
  end

private

def job_params
  params.require(:job).permit(:title, :employer, :location, :start_date, :end_date, :description, :resume_id)
end
end
