class ResumesController < ApplicationController

  def index
    @resumes = Resume.all
    # byebug
    render json: @resumes
  end
  def create
    @resume = Resume.create(resume_params)
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

end
