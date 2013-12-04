class LoginsController < ApplicationController
  def new
  end

  def create
    email = params[:email_address]
    user = User.find_by_email(email)
    unless user
      redirect_to signin_path
      flash[:notice] = "Please enter an existing user's email"
    else
      session[:current_user_id] = user.id
      flash[:notice] = "You have successfully logged in!"
      redirect_to root_url
    end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to root_url
  end
end
