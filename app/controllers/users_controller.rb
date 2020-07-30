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
    @user = User.new(user_params)
    @user.email.downcase!
    if @user.save
      flash[:notice] = 'User was successfully created'
      redirect_to root_path
    else
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      render :new
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
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
