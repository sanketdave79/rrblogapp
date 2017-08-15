class ProjectsController < ApplicationController
  def new
    @projects = Project.new(params[:projects])
  end
  
  def create
    @projects = Project.new(params[:projects])
    @projects.save
    redirect_to @projects
  end
  
  def show
    @projects = Project.find(params[:id])
  end
end
