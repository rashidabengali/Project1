class UsersController < ApplicationController

  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    flash[:error] = "Profile details updated!"
    redirect_to user_path(user.id)
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    flash[:error] = "Account Deleted. We will miss you!"
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :dob, :image, :email, :password, :password_confirmation, :admin)
  end
end
