class EducationsController < ApplicationController

  def index
    @educations = Education.all
    render json: @educations
  end
  def create
    @education = Education.create(education_params)
    render json: @education
  end
  def show
    @education = Education.find(params[:id])
    render json: @education
  end
  def update
    @education = Education.find(params[:id])
    render json: @education
  end
  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    @educations = Education.all
    render json: @educations
  end

private

def education_params
  params.require(:education).permit(:school, :location, :degree, :major, :year, :resume_id)
end

end
