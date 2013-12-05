class UsersController < ApplicationController
  def show
    id = params[:id]
    @user = User.find(id)
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address)
  end
end
