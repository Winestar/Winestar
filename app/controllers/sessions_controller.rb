class SessionsController < ApplicationController
  def new
      render :new
  end

  def create
      user = User.find_by_id(user_params[:id])
      if user && user.authenticate(user_params[:password])
          session[:user_id] = user.id
          redirect_to profile_path
      else
          redirect_to root_path
      end
  end

  def destroy
      session[:user_id] = nil
      redirect_to root_path
  end

private 
  def user_params
      params.require(:user).permit(:email, :password)
  end

end