class UsersController < ApplicationController

  # render user form to update user from guest user to real user
  def edit
  	@user = current_user
    render :edit
  end

# creates new users into db
  def create
  	# @user = User.new(user_params)
    @user = params[:user] ? User.new(user_params) : User.new_guest

    respond_to do |format|
      if @user.save
        current_user.move_to(@user) if current_user && current_user.guest?
        session[:user_id] = @user.id

        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver

        format.html { redirect_to likes_path}
        format.json { render :show, status: :created, location: @user }
        # if @user.first_name != nil
        #   redirect_to profile_path
        # end
      else
        format.html { redirect_to root_path}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # update user with user attributes
  def update
    @user = current_user
    @user.update_attributes(user_params)
    redirect_to '/success'

  end

#show current_user
  def show
    @user = current_user
    # @like = Like.joins(:user).where('user_id = ?', @user)
    # @user.joins(:like, :trip)
    # @trip = current_user.trips.find!(trip_params)
    
    # @current_user = User.find(params[:user_id])
    render :show
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :contact_email, :contact_text, :guest)
  end



end
