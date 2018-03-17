class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :users, notice: "Logged in successfully"
    else
      flash.alert = "Login failed"
      render "new"
    end
  end

end
