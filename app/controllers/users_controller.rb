class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
  end

  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user, notice: 'User successfully created'
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
