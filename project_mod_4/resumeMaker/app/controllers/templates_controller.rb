class TemplatesController < ApplicationController

  def index
    @templates = Template.all
    render json: @templates
  end
  def create
    @template = Template.create(template_params)
    render json: @template
  end
  def show
    @template = Template.find(params[:id])
    render json: @template
  end
  def update
    @template = Template.find(params[:id])
    render json: @template
  end
  def destroy
    @template = Template.find(params[:id])
    @template.destroy
    @templates = Template.all
    render json: @templates
  end

private

def template_params
  params.require(:template).permit(:name)
end
end
