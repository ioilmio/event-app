class SessionController < ApplicationController
  include SessionHelper
  def new
  end

  def create
  end

  def destroy
    redirect_to root
  end
end
