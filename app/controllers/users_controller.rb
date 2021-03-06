class UsersController < ApplicationController
  def index
    @users = User.all
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
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password"
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @created_events = @user.events
    @past_events = @user.events.past
    @upcoming_events = @user.events.upcoming
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
