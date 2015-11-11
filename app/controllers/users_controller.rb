class UsersController < ApplicationController
  # form to creat users
  def edit
  	@user = User.new
    render :new
  end

# creates new users into db
  def create
  	# @user = User.new(user_params)
    @user = params[:user] ? User.new(user_params) : User.new_guest

    respond_to do |format|
      if @user.save
        current_user.move_to(@user) if current_user && current_user.guest?
        session[:user_id] = @user.id

        # flash[:notice] = "You Signed up successfully"

        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver

        format.html { redirect_to root_path}
        format.json { render :show, status: :created, location: @user }
      else
        format.html { redirect_to signup_path}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to root_path

  end


#show current_user
  def show
    @user = User.find(params[:id])
    # render :show
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :contact_email, :contact_text, :guest)
  end



end
