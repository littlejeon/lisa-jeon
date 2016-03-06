class ProjectsController < ApplicationController
  skip_before_action :authorize, only: [:index, :show]


  def index
    @project = Project.all
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
    redirect_to root_path
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
    project.update(project_params)
  end

  def delete
    project = Project.find(params[:id])
    project.delete
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :link, :user_id)
  end

end
