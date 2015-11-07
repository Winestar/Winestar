class LikesController < ApplicationController
  
  # form to create like
  def new
    @like = Like.new
    render :new
  end
  
  # creates new likes into db
  def create
    @like = Like.new(like_params)
    if @like.save

      # redirected_to @user, notice: "Signed up successfully."
      # session[:user_id] = user.user_id
      redirect_to trips_path
    else
      # format.html { render action: "new"}
      redirect_to likes_path
    end
  end

  private
  def like_params
    params.require(:like).permit(:tours, :red_wines, :white_wines)
  end

end
