class UsersController < ApplicationController
  # form to creat users
  def new
  	@user = User.new
  	render :new
  end

# creates new users into db
  def create
  	@user = User.new(user_params)
  	if @user.save

      # redirected_to @user, notice: "Signed up successfully."
  		# session[:user_id] = user.user_id
  		redirect_to root_path
  	else
      # format.html { render action: "new"}
  		redirect_to signup_path
  	end
  end

#show current_user
  def show
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :contact_email, :contact_text)
  end



end
