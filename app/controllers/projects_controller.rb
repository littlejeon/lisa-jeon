class ProjectsController < ApplicationController
  skip_before_action :authorize


  def index
    @project = Project.all
    @array = ["one", "two", "three", "four"]
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end

  def create
    # binding.pry
    @project = Project.create(project_params)
    redirect_to projects_path
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :link, :user_id, :image_upload, :bullets_array => [], :bullets => [])
  end

end
