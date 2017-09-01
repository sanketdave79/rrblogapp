class TasksController < ApplicationController
  def new
    @task = Task.new
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def index
    @tasks = Task.all
  end
  
  def create
    @tasks = Task.new(tasks_params)
    if @tasks.save
      redirect_to @tasks
    else
      render 'new'
    end
  end
  
  private
    def tasks_params
      params.require(:task).permit(:title, :description)
    end
    
end
