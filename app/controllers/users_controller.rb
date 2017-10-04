class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @users = User.new
  end
  
  def show
    @users = User.find(params[:id])
  end
  
  def create
    @users = User.new(users_params)
    if @users.save
      redirect_to @users
    else
      render 'new'
    end
  end
  
  private
    def users_params
      params.require(:user).permit(:name, :password)
    end
end
