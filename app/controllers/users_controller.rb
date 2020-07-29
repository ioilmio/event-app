class UsersController < ApplicationController
  def index
    @users = User.all.order_by('DESC')
    @user = User.find(params[:id])
    @created_events = current_user.events
    @past_events = current_user.attended_events.previous
    @upcoming_events = current_user.attended_events.upcoming
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params[:user])
    if @user.save
      redirect_to root_path, notice: 'User was successfully created'
    else
      render users_new_path, notice: 'Unable to create user'
    end
  end

  def show
    @user = User.find(params[:id])
    @created_events = current_user.events
    @past_events = current_user.attended_events.previous
    @upcoming_events = current_user.attended_events.upcoming
  end

  private

  def user_params
    # byebug
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
