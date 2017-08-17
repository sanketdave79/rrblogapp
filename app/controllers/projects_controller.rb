class ProjectsController < ApplicationController
  def new
    @projects = Project.new
  end
  
  def create
    @projects = Project.new(projects_params)
    if @projects.save
      redirect_to @projects
    else
      render 'new'
    end
  end
  
  def show
    @projects = Project.find(params[:id])
  end
  
  def index
    @projects = Project.all
  end
  
  private
    def projects_params
      params.require(:project).permit(:title, :description)
    end
end
