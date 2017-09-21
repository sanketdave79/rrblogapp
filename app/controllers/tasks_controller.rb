class TasksController < ApplicationController
  def new
    @tasks = Task.new
  end
  
  def show
    @tasks = Task.find(params[:id])
  end
  
  def index
    @tasks = Task.all
  end
  
  def create
    @tasks = Task.new(tasks_params)
    if @tasks.save
      redirect_to tasks#show
    else
      render 'new'
    end
  end
  
  private
    def tasks_params
      params.require(:task).permit(:title, :description, :projects_id)
    end
    
end
