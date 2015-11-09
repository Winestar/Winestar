class UsersController < ApplicationController
  # form to creat users
  def new
  	@user = User.new
    @like = Like.new
    render :new
  end

# creates new users into db
  def create
  	@user = User.new(user_params)

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver

        format.html { redirect_to root_path, alert: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { redirect_to signup_path}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

#show current_user
  def show
    @user = User.find(params[:id])
    # render :show
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :contact_email, :contact_text)
  end



end
