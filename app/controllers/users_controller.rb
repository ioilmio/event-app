class UsersController < ApplicationController
  def new
    @user = User.new(params[:user])
  end

  def create
    @user = User.new(params[:user])
    @user.save
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(params[:name])
  end
end
