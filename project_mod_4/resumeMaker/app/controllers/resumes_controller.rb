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
      # (title: job[:title], employer: job[:employer], location: job[:location], start_date: job[:start_date], end_date: job[:end_date], description: job[:description])

    end

    educations_params[:educations].each do |education|
      @resume.educations.create(education)
      # (school: education[:school], location: education[:location], degree: education [:degree], major: education[:major], graduation_year: education[:graduation_year])
    end

    render json: @resume
  end

  def show
    @resume = Resume.find(params[:id])
    render json: @resume
  end
  def update
    @resume = Resume.find(params[:id])
    render json: @resume
  end
  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    @resumes = Resume.all
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
