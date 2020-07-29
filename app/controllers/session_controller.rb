class SessionController < ApplicationController
  def new; end

  def create
    @user = User.find_by(params[:email])
    if @user&.authenticate(params[:email][:password])
      session[:user_id] = @user.id
      cookie.permanent[:remember_token] = @user.remember_token
      redirect_to root_path
    else
      flash.now[:alert] = 'Email or password not valid'
      redirect_to session_new_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out'
  end
end
