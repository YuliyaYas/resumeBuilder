class ResumesController < ApplicationController

  def index
    @resumes = Resume.all
    # byebug
    render json: @resumes
  end

  def create
    @resume = Resume.create(resume_params)

    # @resume.add_jobs(params[:jobs])
    job_params[:jobs].each do |job|
      @resume.jobs.create(job)
    end

    educations_params[:educations].each do |education|
      @resume.educations.create(education)
    end

    render json: @resume
  end

  def show
    @resume = Resume.find(params[:id])
    render json: @resume
  end

  def update
    # byebug
    @resume = Resume.find(params[:id])
    job_params[:jobs].each do |job|
      @resume.jobs.update(job)
    end

    educations_params[:educations].each do |education|
      @resume.educations.update(education)
    end

    @resume.update(resume_params)
    render json: @resume, include: [:jobs, :educations]
  end

  def destroy
    #@resumes = Resume.all
    @resume = Resume.all.find(params[:id])
    # byebug
    @resume.destroy

    render json: @resumes
  end

private

def resume_params
  params.require(:resume).permit(:name, :first_name, :last_name, :location, :phone, :email, :website, :skills, :summary, :template_id)
end

def job_params
  params.require(:resume).permit(:jobs => [:title, :employer, :location, :start_date, :end_date, :description])
end

def educations_params
  params.require(:resume).permit(:educations => [:school, :location, :degree, :major, :graduation_year])
end



end
