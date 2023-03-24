class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]

  def index
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    # byebug
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
    end
  end

  def show
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
